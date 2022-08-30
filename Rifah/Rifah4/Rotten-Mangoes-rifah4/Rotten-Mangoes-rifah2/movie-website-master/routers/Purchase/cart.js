const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const DB_merch = require('../../DB_codes/DB_merch')
const DB_cart = require('../../DB_codes/DB_cart')

const router = express.Router({ mergeParams: true })

router.get('/',async (req, res) => {
    console.log("from cart get..")
    console.log(req.body)
    console.log(req.params)
    username = req.session.userid;
    /*console.log(username);
    //const getId = await DB_cart.getCartId(req.session.userid)
    console.log("From cart get request")
    //console.log(getId)
    const cart = await DB_cart.getTotalPrice(getId);*/
    const quantity=await DB_cart.getquanity(username)
    console.log(quantity)
    const merch = await DB_merch.getAllProductsAndPrice(username)
    const data = {
        pageTitle: 'Your Cart',
        isAuth: req.session.isAuth,
        username: req.session.username,

        //cart:cart,
        merch:quantity
    }
    res.render("cart", data);
})

router.post('/', async (req, res) => {
    console.log("Cart post...")
    console.log(req.body)
    console.log(req.params)
    console.log(req.session)
    username = req.session.userid;
    console.log(username)
    const merch = await DB_merch.getAllProductsAndPrice(username)
    console.log(merch)

    const bool = await DB_cart.changeBool1(req.body.product_id, username)

    const data = {
        pageTitle: 'Rotten Mangoes',
        isAuth: req.session.isAuth,
        username: req.session.username,

        //bool:bool,

    }
    res.redirect('/')
})


module.exports=router