const express = require('express');
const validator = require('validator')
const { redirect } = require('express/lib/response');
const DB_user = require('../../DB_CODES/DB_user');
const DB_watchlist = require('../../DB_CODES/DB_watchlist');
const router = express.Router({ mergeParams: true });


// '/user'
//no error.
router.get('/', async (req, res) => {
    if (req.session.isAuth)
        return res.redirect('/user/' + req.session.userid);
    return res.redirect('/login');
})



router.get('/:username', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    //database query
    const userInfo = await DB_user.getUserInfoByUsername(username);
    const favList=await DB_user.getFavouriteslistOfUser(username);
    const watchList=await DB_user.getWatchlistOfUser(username);
    const reco=await DB_user.getRecommendation(username);
    console.log(favList)
    //error checking
    const data = {
        pageTitle: 'Profile',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        userInfo:userInfo,
        favList:favList,
        watchList:watchList,
        reco:reco
    }
    console.log("backend ");
    console.log(userInfo);
    res.render('userprofile2', data);
})



router.get('/:username/watchlist', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    const watchlist = await DB_user.getWatchlistOfUser(username);

    const data = {
        pageTitle: 'Watchlist',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        movies: watchlist
    }
    res.render('watchlist', data)
})

router.get('/:username/favourites', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    //database query
    const favouriteslist = await DB_user.getFavouriteslistOfUser(username);
    //error checking
    const data = {
        pageTitle: 'Favourites',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        movies: favouriteslist
    }
    res.render('watchlist', data);
})




router.post('/:username/update', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    const { email, bio } = req.body;

    if (!validator.isEmail(email)) return res.redirect('/user');
    if (bio === '') return res.redirect('/user');
    //database query

    await DB_user.updateUserEmailandBio(username, email, bio);

    console.log("Successfully updated");

    res.redirect('/user');
})


//post to watchlist/add

//!TEST
router.post('/:username/watchlist/add', async (req, res) => {
    //return res.send(req.body);
    //!login kina check again?
    const { username, movie_id,type } = req.body;
    if (type == 'add') {
        await DB_watchlist.addToWatchlist(username, movie_id);
    } else if (type == 'favourite') {
        await DB_watchlist.addToFavourites(username, movie_id);
    } else if (type == 'unfavourite') {
        await DB_watchlist.unfavourite(username, movie_id);
    }
    res.redirect('/movie/' + movie_id);
    //res.redirect('/user/' + username + '/watchlist');
})
//post to update

module.exports = router