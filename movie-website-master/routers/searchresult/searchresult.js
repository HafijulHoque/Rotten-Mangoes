const express = require('express')
const DB_search = require('../../DB_codes/DB_search')
const router = express.Router({ mergeParams: true })

//no error.Ok

router.post('/', async (req, res) => {
    //Processing the search string
    let string = (req.body.search).toLowerCase().trim().split(" ");
    for (let i = 0; i < string.length; i++) {
        string[i] = '%' + string[i] + '%';
    }
    if (string.length == 0) return res.redirect('/');


    const movies = await DB_search.getMoviesByREGEX(string);
//    const characters = await DB_search.getCharactersByREGEX(string);
 //   const voice_actors = await DB_search.getVoiceActorsByREGEX(string);
   // const writers = await DB_search.getWritersByREGEX(string);

    const data = {
        pageTitle: 'Search results',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        movies,
     //   characters,
       // voice_actors,
        //writers
    }
    res.render('searchresults', data);
})



router.get('/', async (req, res) => {
    return res.redirect('/');
})

module.exports = router;