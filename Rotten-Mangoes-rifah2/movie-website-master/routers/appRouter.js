const express = require('express')
const router = express.Router({ mergeParams: true });
const DB_homepage = require('../DB_codes/DB_homepage');
const DB_movies = require('../DB_codes/DB_movie');



//!require all sub routers
const loginRouter = require('./authentication/login')
const registerRouter = require('./authentication/register')
const logoutRouter = require('./authentication/logout')
const singleMovieRouter=require('./Movie1/Movie1')

const movieRouter = require('./movie/movie')
const  movieRouter2=require('./allmovies/allmovies')
const movieRouter3=require('./alltvshows/alltvshows')
const movieListRouter = require('./movielist/movielist')
const searchTagsRouter = require('./searchtags/searchtags')
const searchActorRouter=require('./searchActor/searchActor')
const searchResultsRouter = require('./searchresult/searchresult')
const genreRouter = require('./genre/genre')
const studioRouter = require('./studio/studio')
const personnelRouter = require('./personnel/personnel')

const userRouter = require('./user/user')
const awardRouter=require('./Awards/Awards')
const merchandiseRouter=require('./Merchandise/Merchandise')

const homePageRouter=require('./home/homepage')
const DB_movie = require("../DB_codes/DB_movie");



//!HOME PAGE
router.get('/', async (req, res) => {
    const username = req.session.userid;
    const movieList = await DB_movie.sortMoviesByRelease();
    //const newlyReleased = await DB_homepage.getNewlyReleasedAnime();
    //const topAnimes = await DB_homepage.getTopAnimes();

    let recommendation = []
  //  if (req.session.isAuth)
        recommendation = await DB_homepage.getAllTopMovies();
    const data = {
        pageTitle: 'Rotten Mangoes',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'This is the Home Page',

        recommendation: recommendation,
        moviesList: movieList,
    }
    res.render('index', data)
})


//!set up sub routers
router.use('/movie', movieRouter)
router.use('/movielist', movieListRouter)
router.use('/login', loginRouter)
router.use('/register', registerRouter)
router.use('/logout', logoutRouter)
router.use('/searchtags', searchTagsRouter)
router.use('/searchresults', searchResultsRouter)
router.use('/genre', genreRouter)
router.use('/studio', studioRouter)
router.use('/user', userRouter)
router.use('/personnel', personnelRouter)
router.use('/searchActor',searchActorRouter)
router.use('/review',movieRouter)
router.use('/allmovies',movieRouter2)
router.use('/alltvshows',movieRouter3)
router.use('/singlemovie',singleMovieRouter)
router.use('/Awards',awardRouter)
router.use('/Merchandise',merchandiseRouter)

//!ERRORS

router.get('*', (req, res) => {
    const data = {
        pageTitle: '404',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

router.get('/error', (req, res) => {

    const data = {
        pageTitle: '404',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

module.exports = router