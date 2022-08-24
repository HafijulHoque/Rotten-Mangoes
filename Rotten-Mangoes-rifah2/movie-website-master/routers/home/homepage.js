/*
const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const router = express.Router({ mergeParams: true })

router.get('/', async (req, res) => {
    const movieList = await DB_movie.sortMoviesByRelease();
    const data = {
        pageTitle: 'List of movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        moviesList: movieList,
    }
    res.render('index', data)
})

module.exports = router*/
