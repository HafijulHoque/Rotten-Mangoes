const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const DB_awards = require('../../DB_codes/DB_awards')
const router = express.Router({ mergeParams: true })
router.get('/',async (req, res) => {
        const awards = await DB_awards.getAllAwards();
        console.log("from awards get request");
        const data =
            {
                pageTitle: 'Awards',
                isAuth: req.session.isAuth,
                username: req.session.username,
                awards:awards,
            }
        res.render('Awards', data)

    }
)

module.exports=router