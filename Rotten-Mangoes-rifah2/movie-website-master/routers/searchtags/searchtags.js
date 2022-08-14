const express = require('express')
const DB_movie = require('../../DB_codes/DB_movie')
const router = express.Router({ mergeParams: true })

//all done.ok
function range(size, startAt = 0) {
    return [...Array(size).keys()].map(i => i + startAt);
}




//Loads the search by tags page from all genres
router.get('/', async (req, res) => {
    console.log("getting from searchtags")
    const genres = await DB_movie.getAllGenres()
    const years = range(33, 1990);
    const data = {
        pageTitle: 'Search by Tags',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Search Movies By Tags',

        genres,
        years
    }
    res.render('searchtags', data);
})


router.post('/', async (req, res) => {
    console.log("posting from searchtags")
    let { genres, years } = req.body;

    if (typeof years == "string") years = [years]
    if (typeof genres == "string") genres = [genres]

    let result;
    if (genres && genres.length > 0) {
        result = await DB_movie.getMoviesTitleandIDByOneGenre(genres);
    } else if (years && years.length > 0) {
        result = await DB_movie.getMoviesByYear(years);
    }

    genres = await DB_movie.getAllGenres()
    years = range(33, 1990);
    const data = {
        pageTitle: 'Search by Tags',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Search Animes By Tags',

        genres,
        years,
        movies: result
    }
    res.render('searchresults', data);
})


module.exports = router