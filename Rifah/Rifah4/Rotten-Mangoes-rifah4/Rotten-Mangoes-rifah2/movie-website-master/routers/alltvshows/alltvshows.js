const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })
router.get('/',async (req, res) => {
        console.log("from all tv shows")
        const tvList = await DB_movie.getRandomSeries();
        console.log(tvList);
        const data = {
            pageTitle: 'List of Tv Series',
            isAuth: req.session.isAuth,
            username: req.session.username,

            tvsList: tvList
        }
        res.render('alltvshows', data)

    }
)
module.exports=router