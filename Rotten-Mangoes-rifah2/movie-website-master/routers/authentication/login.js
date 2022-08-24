const express = require('express')
const bcrypt = require('bcrypt')
const DB_auth = require('../../DB_codes/DB_auth')
const {colours} = require("nodemon/lib/config/defaults");
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    res.render('login', { message: 'Please provide info' })
})



router.post('/', async (req, res) => {
    console.log("from login");
    const { username, password } = req.body;
    console.log(req.body.username);
    console.log(req.body.password);
    console.log(req.body);
    const user =await  DB_auth.getUserByUsername(username);
    console.log("databse user "+user.object);
    console.log(user);
    console.log(user.length);
    const userExists = user.length == 0 ? false : true;
    if (!userExists) {
        return res.render('login', { message: 'Error logging in' })
    }
console.log("user.Password");
    const passwordMatch = await bcrypt.compare(password, user[0].Password)
    if (!passwordMatch) {
        return res.render('login', { message: 'Error logging in' })
    }
    //var session = req.session;
    req.session.userid = req.body.username;
    req.session.isAuth = true;
    console.log("done...")
    console.log(req.body.username);
    res.redirect('/');
})

module.exports = router