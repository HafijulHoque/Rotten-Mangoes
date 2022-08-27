const database = require('./database')
var oracledb=require('oracledb')
oracledb.autoCommit=true;

async function getUsersRatingOfMovie(username, id) {
    let sql = `
        SELECT * 
        FROM RATED
        WHERE USERNAME = :USERNAME AND id=:id
    `
    return (await database.execute(sql, [username, TITLE], database.options)).rows[0]
}
async function getRating( id) {
    let sql = `
        SELECT AVG("Rating")
        FROM "C##MOVIEDATABASE"."Rated"
       GROUP BY "Id"
        HAVING "Id"=:id
    `
    return (await database.execute(sql, [id], database.options)).rows[0]
}

async function insertRating(username, rating,id,comment) {
    let sql = `
        INSERT INTO "C##MOVIEDATABASE"."Rated"
        VALUES(:USERNAME, :RATING, :ID,:COMMENT)
    `
    return await database.execute(sql, [username, rating,id,comment], database.options)
}
async function RatingExist(username,id) {
    let sql = `
    SELECT *
    FROM "C##MOVIEDATABASE"."Rating"
WHERE "Username"=:username and :"Id"=:id
    
        
    `
    return await database.execute(sql, [username, id], database.options)
}



async function updateRating(username, id, star) {
    let sql = `
        UPDATE RATED
        SET STARS = :STAR
        WHERE USERNAME = :USERNAME AND id=:id
    `
    return (await database.execute(sql, [star, username, id], database.options)).rows
}

/*async function updateMovieRating(anime_id) {
    let sql = `
        BEGIN
            UPDATE_ANIME_RATING(:ANIME_ID);
        END;
    `
    return await database.execute(sql, [anime_id], database.options)
}*/
/*async function updateAllAnimeRank() {
    let sql = `
        BEGIN
            UPDATE_ALL_ANIME_RANK;
        END;
    `
    return await database.execute(sql, [], database.options)
}*/
/*async function updateAnimeRating(anime_id) {
    let sql = `
        BEGIN
            UPDATE_ANIME_RATING(:ANIME_ID);
        END;
    `
    return await database.execute(sql, [anime_id], database.options)
}*/

module.exports = {
    getUsersRatingOfMovie,
    insertRating,
    updateRating,
    getRating,
    RatingExist
   // updateAllAnimeRank,
    //updateAnimeRating
}