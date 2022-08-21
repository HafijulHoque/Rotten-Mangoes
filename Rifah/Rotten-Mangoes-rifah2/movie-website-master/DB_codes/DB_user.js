
const database = require('./database')
//no error.Done.

async function getUserInfoByUsername(username) {
    let sql = `
        SELECT *
        FROM "C##MOVIEDATABASE"."Useraccount"
        WHERE "Username" = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows[0]
}
async function updateUserFirstName(userame,First_name) {
    let sql = `
    UPDATE "C##MOVIEDATABASE"."USERaccount"
    SET "FIRST_NAME" = :First_name
    WHERE "Username"=:username
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}
async function updateUserPassword(userame,Password) {
    let sql = `
    UPDATE "C##MOVIEDATABASE"."USERaccount"
    SET "Password" = :Password
    WHERE "Username"=:username
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}


async function updateUserEmailandBio(username, email, bio) {
    let sql = `
    UPDATE "C##MOVIEDATABASE"."USERaccount"
    SET "Email" = :EMAIL, "Fist_Name" = :BIO
    WHERE "Username" = :USERNAME
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}

async function getFavouriteslistOfUser(username) {
    let sql = `
        SELECT *
        FROM "C##MOVIEDATABASE"."favourites"
        WHERE "Username"=:USERNAME
          
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistOfUser(username) {
    let sql = `
     SELECT *
        FROM "C##MOVIEDATABASE"."Watchlist"
        WHERE "Username"=:USERNAME
        
    `
    return (await database.execute(sql, [username], database.options)).rows
}

module.exports = {
    getUserInfoByUsername,
    updateUserEmailandBio,
    getFavouriteslistOfUser,
    getWatchlistOfUser,
    updateUserFirstName,
    updateUserPassword
}
