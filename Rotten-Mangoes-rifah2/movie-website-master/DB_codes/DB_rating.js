const database = require('./database')

async function getUsersRatingOfMovie(username, id) {
    let sql = `
        SELECT * 
        FROM "C##MOVIE_DATABASE"."Rated"
        WHERE USERNAME = :USERNAME AND id=:id
    `
    return (await database.execute(sql, [username, TITLE], database.options)).rows[0]
}

async function insertRating(username, TITLE, stars) {
    let sql = `
        INSERT INTO RATED(USERNAME, TITLE, STARS)
        VALUES(:USERNAME, :ANIME_ID, :STARS)
    `
    return await database.execute(sql, [username, TITLE, stars], database.options)
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
   // updateAllAnimeRank,
    //updateAnimeRating
}