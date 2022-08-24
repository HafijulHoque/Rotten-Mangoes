const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })

// /movie router
router.get('/:Id', async (req, res) => {
    console.log("hi from single movie");
    const movie_id = req.params.id;
    const username = req.session.username;
console.log(movie_id)
  const movie=await DB_movie.getShowsByID(movie_id);
  console.log("get from variable movie id")
    console.log(movie)

    const data = {
        pageTitle: 'Shows',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        movie
    }
    //cleanup and stuff
    {
        if (!movie) return res.redirect('/error');
        //   await DB_rating.updateAnimeRating(anime_id);
        // await DB_rating.updateAllAnimeRank();
    }
    res.render('singlemovie', data)
})
module.exports=router