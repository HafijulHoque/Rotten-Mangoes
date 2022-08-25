const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const DB_merch = require('../../DB_codes/DB_merch')
const router = express.Router({ mergeParams: true })
router.get('/',async (req, res) => {
        const tshirts = await DB_merch.getAllTshirts();
        const figurines = await DB_merch.getAllFigurines();
        console.log("from Merchandise get request");
        const data =
            {
                pageTitle: 'Merchandise',
                isAuth: req.session.isAuth,
                username: req.session.username,

                tshirts: tshirts,
                figurines: figurines
            }
        res.render('Merchandise', data)

    }
)

module.exports=router