const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_list = require('../../DB_codes/DB_homepage')
const DB_rating=require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })
//all done. Ok



router.get('/', async (req, res) => {
    const movieList = await DB_movie.getAllMoviesTitleAndID();
    console.log(movieList)
    const data = {
        pageTitle: 'List of movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        moviesList: movieList,

    }
    res.render('movielist', data)
})
router.get('/:Id/details', async (req, res) => {
    console.log("Movielist new get..")
    console.log(req.params.Id)
    const movieList = await DB_movie.getShowsByID(req.params.Id);
    console.log(movieList)
    const data = {
        pageTitle: 'List of movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        moviedetails: movieList,
    }
    res.render('singlemovie', data)
})
router.post('/:Id/details', async (req, res) => {
    console.log("Movielist new post..")
    console.log(req.body)
    console.log(req.session.userid)
    console.log(req.params.Id)
    console.log(req.body.rating)
    console.log(req.body.comment);
    let ratingexist=(await DB_rating.RatingExist(req.body.userid,req.params.Id)).length==0?true:false
    if(ratingexist==false)
        DB_rating.insertRating(req.session.userid,req.body.rating,req.params.Id,req.body.comment)
    else
        console.log("Rating already exist..")

    res.redirect('/')

})




/*router.get('/new', async (req, res) => {
    const newMovies = await DB_list.getAllNewlyReleasedAnime();
    const data = {
        pageTitle: 'List of Newly released Movies',
        isAuth: req.session.isAuth,
        username: req.session.username,
        movies: newMovies
    }
    res.render('movielist', data)
})*/

router.get('/top', async (req, res) => {
    const topMovies = await DB_list.getTopMovies();
    const data = {
        pageTitle: 'List of Top movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        movies: topMovies
    }
    res.render('Movielist', data)
})

router.get('/recommendation', async (req, res) => {
    const recommendations = await DB_list.getAllUserRecommendation(req.session.userid);
    const data = {
        pageTitle: 'Recommendations',
        isAuth: req.session.isAuth,
        username: req.session.username,

        movies: recommendations
    }
    res.render('movielist', data)
})


//searched for a specific anime

router.post('/', async (req, res) => {

    //Processing the search string
    let string = (req.body.search).toLowerCase().trim().split(" ");

    for (let i = 0; i < string.length; i++) {
        string[i] = '%' + string[i] + '%';
    }

    if (string.length == 0) return res.redirect('/')

    const movies = await DB_movie.getMoviesByREGEX(string);

    const data = {
        pageTitle: 'List of Movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        movies
    }
    res.render('movielist', data);
})

module.exports = router