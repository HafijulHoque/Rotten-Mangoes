const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_list = require('../../DB_codes/DB_homepage')
const DB_rating=require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })
router.get('/', async (req, res) => {
    const directorlist=await DB_movie.getAllDirectors();
    console.log(directorlist)
    const data = {
        pageTitle: 'List of director',
        isAuth: req.session.isAuth,
        username: req.session.username,
        directorlist:directorlist


    }
    res.render('directorlist', data)
})
router.get('/:SSN/details', async (req, res) => {
    console.log("actor details..")
    console.log(req.params)
    const directordetails=await DB_movie.getDirectorbyid(req.params.SSN)


    const data = {
        pageTitle: 'List of directors',
        isAuth: req.session.isAuth,
        username: req.session.username,
        directordetails:directordetails

    }
    res.render('singledirector', data)
})
module.exports=router
