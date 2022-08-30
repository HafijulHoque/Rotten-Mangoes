const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_list = require('../../DB_codes/DB_homepage')
const DB_rating=require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })
router.get('/', async (req, res) => {
    const actorlist=await DB_movie.getAllActors();
    console.log(actorlist)
    const data = {
        pageTitle: 'List of Actors',
        isAuth: req.session.isAuth,
        username: req.session.username,
        actorlist:actorlist


    }
    res.render('actorlist', data)
})
router.get('/:SSN/details', async (req, res) => {
    console.log("actor details..")
    console.log(req.params)
const actordetails=await DB_movie.getActorbyid(req.params.SSN)
    console.log(actordetails)

    const data = {
        pageTitle: 'List of Actors',
        isAuth: req.session.isAuth,
        username: req.session.username,
        actordetails:actordetails

    }
    res.render('singleactor', data)
})

module.exports=router