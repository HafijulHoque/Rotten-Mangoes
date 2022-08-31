const express = require('express')
const bcrypt = require('bcrypt')
const DB_auth = require('../../DB_codes/DB_auth')
const DB_user = require("../../DB_codes/DB_user");
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    if (!req.session.isAuth) return res.redirect('/login');
    console.log("hi from userprofile get")
    const username = req.session.userid;
    console.log(username)
    await DB_auth.getusername(username)
    const userInfo = await DB_user.getUserInfoByUsername(username);
    console.log(userInfo)
    const data=
        {
            pageTitle: 'Edit profile',
            isAuth: req.session.isAuth,
            username: req.session.username,
            user:userInfo
        }

    res.render('editProfile',data)
})
router.get('/updatepassword', async (req, res) => {

    console.log("hi from update password get")

    const data=
        {
            pageTitle: 'Update password',
            isAuth: req.session.isAuth,
            username: req.session.username,

        }

    res.render('updatepassword',data)
})
router.post('/updatepassword', async (req, res) => {

    console.log("hi from update password post")
    console.log("new password")
    const nabid=await DB_auth.getUserByUsername(req.body.username)
    console.log(" old pass = ")
    console.log(nabid)
    console.log(req.body.password)
    console.log(req.body)
    const hashpassword = await bcrypt.hash(req.body.password, 4);
    console.log(hashpassword)
    await DB_auth.updatePassword(req.body.username,hashpassword)
    console.log("DONE sucessfullyy")
    const nabid1=await DB_auth.getUserByUsername(req.body.username)
    console.log(nabid1)

    const data=
        {
            pageTitle: 'Login',


        }

    res.render('login',data)
})

router.post('/', async (req, res) => {
    console.log("hi from editprofile post")
    console.log(req.session)

    //const hashpassword = await bcrypt.hash(req.body.password, 4);
    console.log(req.body)
    const { username, email, firstname, lastname, dob, credit } = req.body;
    await DB_auth.UpdateAccountIntoDB(username, firstname, lastname, dob, email, credit)
    console.log("hi redirecting..")
    res.redirect('/')

})
module.exports=router