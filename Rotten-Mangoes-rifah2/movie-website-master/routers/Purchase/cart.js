const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const DB_merch = require('../../DB_codes/DB_merch')
const DB_cart = require('../../DB_codes/DB_cart')

const router = express.Router({ mergeParams: true })

router.get('/',async (req, res) => {
    username = req.session.userid;
    /*console.log(username);
    //const getId = await DB_cart.getCartId(req.session.userid)
    console.log("From cart get request")
    //console.log(getId)
    const cart = await DB_cart.getTotalPrice(getId);*/
    const merch = await DB_merch.getAllProductsAndPrice(username)
    const data = {
        pageTitle: 'Your Cart',
        isAuth: req.session.isAuth,
        username: req.session.username,

        //cart:cart,
        merch:merch
    }
    res.render("cart", data);
})

router.post('/', async (req, res) => {
    username = req.session.userid;
    const merch = await DB_merch.getAllProductsAndPrice(username)
    const tshirts = await DB_merch.getAllTshirts();
    const figurines = await DB_merch.getAllFigurines();
    const bool = await DB_cart.changeBool1(req.body.product_id, username)

    const data = {
        pageTitle: 'Rotten Mangoes',
        isAuth: req.session.isAuth,
        username: req.session.username,

        //bool:bool,
        merch:merch,
        tshirts:tshirts,
        figurines:figurines,
    }
    res.redirect("cart")
})

router.post('/', async (req, res) => {
    username = req.session.userid;
    const merch = await DB_merch.getAllProductsAndPrice(username)
    const data = {
        pageTitle: 'Rotten Mangoes',
        isAuth: req.session.isAuth,
        username: req.session.username,

        //bool:bool,
        merch:merch
    }
    res.render("bought", data);
})
module.exports=router