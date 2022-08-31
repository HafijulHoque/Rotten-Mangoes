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

async function insertRating(username, rating,id,Comment) {
    let sql = `
        INSERT INTO "C##MOVIEDATABASE"."Rated"
        VALUES(:username, :raing, :id, :Comment)
    `
    return await database.execute(sql, [username, rating,id,Comment], database.options)
}
async function insertRating2(username,rating,id,kk)
{
    let sql=`
    INSERT INTO "C##MOVIEDATABASE"."Rated"
    VALUES(:username, :raing, :id,:kk )

    `
    return await database.execute(sql,[username,rating,id,kk],database.options)
}

async function RatingExist(username,id) {
    console.log(username)
    console.log(id)
    let sql = `
    SELECT "Username"
    FROM "C##MOVIEDATABASE"."Rated"
WHERE "Username"=:username and "Id"=:id
    
        
    `
  const nabid= (await database.execute(sql, [username, id], database.options))
    console.log(nabid)
    console.log(nabid.rows)
    return nabid.rows


}


async function getAverageRating(id) {
    let sql = `
       SELECT AVG('Rating') as avgrating
       FROM "C##MOVIEDATABASE"."Rated"
        GROUP BY "Username"
       
    `
    return (await database.execute(sql, [ id], database.options)).rows[0].avgrating
}

async function getAllcomments(id) {
    let sql = `
       SELECT "Comment"
       FROM "C##MOVIEDATABASE"."Rated"
where "Id"=:id
       
    `
    return (await database.execute(sql, [ id], database.options)).rows
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
    RatingExist,
    insertRating2,
    getAverageRating,
    getAllcomments
   // updateAllAnimeRank,
    //updateAnimeRating
}