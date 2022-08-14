const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_list = require('../../DB_codes/DB_homepage')
const router = express.Router({ mergeParams: true })
//all done. Ok

var Canvas = require("canvas");
var Image = Canvas.Image;
//var canvas = new Canvas();
var image1 = new Image();
image1.src = 'img/Movie_pics/GodFather1.png';

var image2 = new Image();
image2.src = 'img/Movie_pics/Tenet.jpg';

var imgArray = new Array();
imgArray[0] = image1;
imgArray[1] = image2;

router.get('/', async (req, res) => {
    const movieList = await DB_movie.getAllMoviesTitleAndID();
    console.log(movieList);
    const data = {
        pageTitle: 'List of movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        moviesList: movieList,
        image: imgArray
    }
    res.render('movielist', data)
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