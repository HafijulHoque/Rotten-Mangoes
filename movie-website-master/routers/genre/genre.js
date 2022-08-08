const express = require('express')
const DB_anime = require('../../DB_codes/DB_movie')
const router = express.Router({ mergeParams: true })
//all done.Ok
// '/genre' endpoint
router.get('/', async (req, res) => {
    //database query
    const genres = await DB_anime.getAllGenres();
    //error checking
    const data = {
        pageTitle: 'Genres',
        isAuth: req.session.isAuth,
        username: req.session.username,

        genres
    }
    res.render('genres', data)
})


router.get('/:genre_name', async (req, res) => {
    const genre_name = req.params.genre_name;
    //database query
    const movies = await DB_anime.getMoviesTitleandIDByOneGenre(genre_name);
    //error checking
    const data = {
        pageTitle: 'Genre',
        isAuth: req.session.isAuth,
        username: req.session.username,

        genre_name,
        movies
    }
    res.render('genre', data)
})

module.exports = router