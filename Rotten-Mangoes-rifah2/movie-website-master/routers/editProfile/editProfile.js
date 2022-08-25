const express = require('express')
const bcrypt = require('bcrypt')
const DB_auth = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    console.log("hi from userprofile get")
    const data=
        {
            pageTitle: 'Edit profile',
            isAuth: req.session.isAuth,
            username: req.session.username
        }

    res.render('editProfile',data)
})

router.post('/', async (req, res) => {
    console.log("hi from editprofile post")
    console.log(req.session)
    console.log(req.params)
    const { username,Bio, email, password,creditcard } = req.body;
    console.log("hi");
    console.log(username)
    console.log(Bio)
    console.log(email)
    console.log(password)
    console.log(creditcard)
    console.log(req.body);

    // let userExists = (await DB_auth.getUserByUsername(username)).length == 0 ? false : true;
    let userExists=false;

    if (userExists) {
        return res.render('register', { message: 'User already exists' })
    }
    if (!username || !email || !password) {
        return res.render('register', { message: 'Please provide all info' })
    }

    //if new user
    const hashpassword = await bcrypt.hash(password, 4);
    //insert user into db with hashed password
    const nabid=await DB_auth.getUserByUsername(username);
    console.log("user info..")
    console.log(nabid)
    await DB_auth.UpdateAccountIntoDB1(username,Bio);
    //await DB_auth.UpdateAccountIntoDB(username,email,Bio,creditcard);
    res.redirect('/')

})
module.exports=router