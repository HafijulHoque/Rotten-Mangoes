const express = require('express')
const DB_movie = require('../../DB_codes/DB_review')
const DB_list = require('../../DB_codes/DB_homepage')
const router = express.Router({ mergeParams: true })


router.get('/:id', async (req, res) => {
    const reviewList = 1;
    console.log(movieList)
    const data = {
        pageTitle: 'List of movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        moviesList: movieList,
    }
    res.render('review', data)
})