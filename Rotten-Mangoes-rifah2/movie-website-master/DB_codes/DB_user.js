
const database = require('./database')
//no error.Done.

async function getUserInfoByUsername(username) {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Useraccount"
        WHERE "Username" = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows[0]
}
async function updateUserFirstName(userame,First_name) {
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."USERaccount"
    SET "FIRST_NAME" = :First_name
    WHERE "Username"=:username
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}
async function updateUserPassword(userame,Password) {
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."USERaccount"
    SET "Password" = :Password
    WHERE "Username"=:username
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}


async function updateUserEmailandBio(username, email, bio) {
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."USERaccount"
    SET "Email" = :EMAIL, "Fist_Name" = :BIO
    WHERE "Username" = :USERNAME
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}

async function getFavouriteslistOfUser(username) {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."favourites"  JOIN "C##MOVIE_DATABASE"."Show" USING ("Id")
        WHERE "Username"=:USERNAME
          
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistOfUser(username) {
    let sql = `
     SELECT *
        FROM "C##MOVIE_DATABASE"."Watchlist"   JOIN "C##MOVIE_DATABASE"."Show" USING ("Id")
        WHERE "Username"=:USERNAME
        
    `
    return (await database.execute(sql, [username], database.options)).rows
}
async function getRecommendation(username) {
    let sql = `
     SELECT *
       FROM "C##MOVIE_DATABASE"."Show"
        WHERE   "Genre" IN (
            SELECT "Genre"
            FROM "C##MOVIE_DATABASE"."favourites"  JOIN "C##MOVIE_DATABASE"."Show" USING ("Id")
            WHERE  "Username"=:USERNAME
            )
        
    `
    return (await database.execute(sql, [username], database.options)).rows
}
module.exports = {
    getUserInfoByUsername,
    updateUserEmailandBio,
    getFavouriteslistOfUser,
    getWatchlistOfUser,
    updateUserFirstName,
    updateUserPassword,
    getRecommendation
}
