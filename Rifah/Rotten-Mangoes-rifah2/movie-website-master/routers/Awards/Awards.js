const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })
router.get('/',(req,res)=>
    {
        console.log("from awards get request");
        const data=
            {

            }
        res.render('Awards',data)

    }
)

module.exports=router