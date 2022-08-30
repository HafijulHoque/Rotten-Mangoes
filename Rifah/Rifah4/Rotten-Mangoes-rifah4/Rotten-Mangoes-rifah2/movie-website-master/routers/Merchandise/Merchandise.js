
const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const DB_merch = require('../../DB_codes/DB_merch')
//const DB_merchOrder = require('../../DB_codes/DB_merch')
const router = express.Router({ mergeParams: true })
router.get('/',async (req, res) => {
            console.log("mERCHANDISE GET ")
            const tshirts = await DB_merch.getAllTshirts();
            const figurines = await DB_merch.getAllFigurines();
            //console.log("from Merchandise get request");
            const data =
                {
                        pageTitle: 'Merchandise',
                        isAuth: req.session.isAuth,
                        username: req.session.username,

                        tshirts: tshirts,
                        figurines: figurines
                }
            res.render('Merchandise', data)

    }
)

/*router.get('/',async (req, res) => {
    const tshirts = await DB_merch.getAllTshirts();
    const figurines = await DB_merch.getAllFigurines();
    const merch = await DB_merch.getAllProductsAndPrice(username)
    //console.log("from Merchandise get request");
    const data =
        {
                pageTitle: 'Your Cart',
                isAuth: req.session.isAuth,
                username: req.session.username,
                tshirts: tshirts,
                figurines: figurines,
                merch:merch
        }
    res.render('cart', data)
    }
)*/

router.post('/', async (req, res) => {

        console.log("Merch post request")
        //console.log("Params")
        //console.log(req.params)
        console.log("body")
        console.log(req.body)
        //Processing the search string
        /*let string = (req.body.search).toLowerCase().trim().split(" ");
        for (let i = 0; i < string.length; i++) {
                string[i] = '%' + string[i] + '%';
        }
        if (string.length == 0) return res.redirect('/')*/
        username = req.session.userid;

        const tshirts = await DB_merch.getAllTshirts();
        const figurines = await DB_merch.getAllFigurines();
        //ArrayMerch = []

        const x = await DB_merch.insertProduct(username, req.body.product_id, req.body.price);
        const stock = await DB_merch.decrementStock(req.body.product_id)
        const merch = await DB_merch.getAllProductsAndPrice(username)
        console.log("From merch post request stock")
        console.log(stock);
        //console.log(Array1)

        const data = {
                pageTitle: 'Your Cart',
                isAuth: req.session.isAuth,
                username: req.session.userid,

                merch:merch,
                x,
                tshirts:tshirts,
                figurines:figurines
                //Array1:Array1
        }
        //res.redirect('cart')
        res.redirect('Merchandise')
})

module.exports=router