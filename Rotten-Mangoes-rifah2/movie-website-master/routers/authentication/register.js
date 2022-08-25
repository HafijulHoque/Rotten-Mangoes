const express = require('express')
const bcrypt = require('bcrypt')
const DB_auth = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    res.render('register', { message: 'Enter Credentials' })
})




//user makes post request to register him into db
router.post('/', async (req, res) => {
    const { username, email, password} = req.body;
    console.log(email)
console.log(username);
    let userExists = (await DB_auth.getUserByUsername(username)).length == 0 ? false : true;
    userExists=false;

    if (userExists) {
        return res.render('register', { message: 'User already exists' })
    }
    if (!username || !email || !password) {
        return res.render('register', { message: 'Please provide all info' })
    }

    //if new user
    const hashpassword = await bcrypt.hash(password, 4);
    //insert user into db with hashed password
    await DB_auth.insertAccountIntoDB(username,  hashpassword,email);
    res.redirect('/')
})

module.exports = router