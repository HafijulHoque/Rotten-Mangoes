const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_list = require('../../DB_codes/DB_homepage')
const router = express.Router({ mergeParams: true })

router.get('/', async (req, res) => {
    const tvList = await DB_movie.getAllTvSeriesTitleAndID();
    console.log(tvList);
    const data = {
        pageTitle: 'List of Tv Series',
        isAuth: req.session.isAuth,
        username: req.session.username,

        tvsList: tvList
    }
    res.render('alltvshows.ejs', data)
})

module.exports = router