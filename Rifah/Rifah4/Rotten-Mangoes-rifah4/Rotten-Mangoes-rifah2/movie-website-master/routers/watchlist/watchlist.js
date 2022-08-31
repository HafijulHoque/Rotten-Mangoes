const express = require('express')
const bcrypt = require('bcrypt')
const DB_auth = require('../../DB_codes/DB_auth')
const DB_user = require("../../DB_codes/DB_user");
const DB_movie=require('../../DB_codes/DB_movie')
const router = express.Router({ mergeParams: true })
router.post('/', async (req, res) => {
    console.log("from watchlist post")
  console.log(req.body)
      console.log("session")
    console.log(req.session)
    console.log(req.params)

    console.log(req.session.userid)
   console.log(req.body.id)
    await DB_movie.Mywatchlist(req.session.userid,req.body.id)

   res.redirect('/')
})
router.get('/', async (req, res) => {

console.log("watchlist get")
    console.log(req.session.userid)
const moviesList=await DB_movie.getallWatchlist(req.session.userid)
    console.log(moviesList)
    const data = {
        pageTitle: 'List of movies',
        isAuth: req.session.isAuth,
        username: req.session.username,

        moviesList: moviesList

    }
    res.render('watchlist',data)
})

module.exports=router