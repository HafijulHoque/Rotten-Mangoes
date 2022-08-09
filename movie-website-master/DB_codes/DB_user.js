
const database = require('./database')
//no error.Done.

async function getUserInfoByUsername(username) {
    let sql = `
        SELECT *
        FROM USERaccount
        WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows[0]
}



async function updateUserEmailandBio(username, email, bio) {
    let sql = `
    UPDATE USERaccount
    SET EMAIL = :EMAIL, FIRST_NAME = :BIO
    WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}

async function getFavouriteslistOfUser(username) {
    let sql = `
        SELECT TITLE,RELEASE_DATE
        FROM FAVOURITES
        WHERE USERNAME=:USERNAME
          
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistOfUser(username) {
    let sql = `
     SELECT TITLE,RELEASE_DATE
        FROM WATCHLIST
        WHERE USERNAME=:USERNAME
        
    `
    return (await database.execute(sql, [username], database.options)).rows
}

module.exports = {
    getUserInfoByUsername,
    updateUserEmailandBio,
    getFavouriteslistOfUser,
    getWatchlistOfUser
}
