const express = require('express')
const DB_search = require('../../DB_codes/DB_search')
const router = express.Router({ mergeParams: true })

//no error.Ok

router.post('/', async (req, res) => {
    console.log("posting from search result")
    console.log(req.body);
    //Processing the search string
    let string = (req.body.search).toLowerCase().trim().split(" ");
    for (let i = 0; i < string.length; i++) {
        string[i] = '%' + string[i] + '%';
    }
    if (string.length == 0) return res.redirect('/');

    console.log(string);

    const movies = await DB_search.getShowsByREGEX(string);
    console.log(movies);
    const actors = await DB_search.getActorsByREGEX(string);
//    const characters = await DB_search.getCharactersByREGEX(string);
 //   const voice_actors = await DB_search.getVoiceActorsByREGEX(string);
   // const writers = await DB_search.getWritersByREGEX(string);

    const data = {
        pageTitle: 'Search results',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        movies:movies,
        actors:actors,
     //   characters,
       // voice_actors,
        //writers
    }
    res.render('searchresults', data);
})



router.get('/', async (req, res) => {
    console.log("getting from searchresults")
console.log(req.body.name)
    return res.redirect('/searchActor');
})

module.exports = router;