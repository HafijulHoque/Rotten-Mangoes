const oracledb = require('oracledb');
const database = require('./database')
//All ok.Done
async function getCountWatchlisted(id) {
    let sql = `
        SELECT COUNT(*) AS CNT
        FROM WATCHLIST
        WHERE id=:id
    `
    return (await database.execute(sql, [anime_id], database.options)).rows[0].CNT
}

async function getCountFavourited(id) {
    let sql = `
        SELECT COUNT(*) AS CNT
        FROM FAVOURITES
        WHERE ID = :ID 
    `
    return (await database.execute(sql, [anime_id], database.options)).rows[0].CNT
}

async function getFavouriteslistOfUser(username) {
    let sql = `
        SELECT Title
        FROM FAVOURITES
        WHERE USERNAME = :USERNAME 
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistOfUser(username) {
    let sql = `
        SELECT Title
        FROM WATCHLIST
        WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistRowOfUserAndMovie(username, id) {
    let sql = `
        SELECT *
        FROM WATCHlist
        WHERE USERNAME = :USERNAME AND id=:id
    `
    return (await database.execute(sql, [username, TITLE], database.options)).rows[0]
}
async function getFavouriteslistRowOfUserAndMovie(username, id) {
    let sql = `
        SELECT *
        FROM favourites
        WHERE USERNAME = :USERNAME
          AND id = :id
    `
    return (await database.execute(sql, [username, TITLE], database.options)).rows[0]
}

async function addToWatchlist(username, TITLE) {
    let sql = `
        INSERT INTO WATCHLIST
        WATCHED_LIST(USERNAME, TILE)
        VALUES(:USERNAME, :TITLE)
    `
    return await database.execute(sql, [username, TITLE], database.options)
}

async function addToFavourites(username, Movie_id) {
    let sql = `
        INSERT INTO FAVOURITES(username,id)
VALUES (:username,:Movie_id)
    `
    return (await database.execute(sql, [username, anime_id], database.options))
}

async function unfavourite(username, movie_id) {
    let sql = `
        DELETE FAVOURITES
        WHERE USERNAME = :USERNAME AND ID = :MOVIE_ID
    `
    return (await database.execute(sql, [username, anime_id], database.options)).rows
}

module.exports = {
    getCountWatchlisted,
    getCountFavourited,
    getFavouriteslistOfUser,
    getWatchlistOfUser,
    getWatchlistRowOfUserAndMovie,
    addToWatchlist,
    addToFavourites,
    unfavourite,
    getFavouriteslistOfUser
}
