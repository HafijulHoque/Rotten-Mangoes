const database = require('./database')

async function getNewlyReleasedMovies() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Movies"
        ORDER BY "RELEASE_DATE" DESC
        FETCH next 4 ROWS ONLY 
       
    `
    return (await database.execute(sql, [], database.options)).rows
}
async function getNewlyReleasedTvShows() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Tv_series"
        ORDER BY "RELEASE_DATE" DESC
            FETCH next 4 ROWS ONLY
       
    `
    return (await database.execute(sql, [], database.options)).rows
}


async function getTopTvSeries() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Rated" NATURAL join "C##MOVIE_DATABASE"."Tv_series"
        ORDER BY "Stars" DESC
            FETCH next 4 ROWS ONLY
        
    `
    return (await database.execute(sql, [], database.options)).rows
}
async function getTopMovies() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Rated" NATURAL join "C##MOVIE_DATABASE"."Movies"
        ORDER BY "Stars" DESC
            FETCH next 4 ROWS ONLY
        
    `
    return (await database.execute(sql, [], database.options)).rows
}

async function getAllNewlyReleasedMovies() {
    let sql = `    SELECT *
                   FROM "C##MOVIE_DATABASE"."Movies"
                   ORDER BY "RELEASE_DATE" DESC
  
    `
    return (await database.execute(sql, [], database.options)).rows
}
async function getAllNewlyReleasedTvSeries() {
    let sql = `    SELECT *
                   FROM "C##MOVIE_DATABASE"."Tv_series"
                   ORDER BY "RELEASE_DATE" DESC
  
    `
    return (await database.execute(sql, [], database.options)).rows
}


async function getAllTopMovies() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Rated" NATURAL join "C##MOVIE_DATABASE"."Movies"
        ORDER BY "Rating" DESC
    
    `

    return (await database.execute(sql, [], database.options)).rows
}
async function getAllTopTvSeries() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Rated" NATURAL join "C##MOVIE_DATABASE"."Tv_series"
        ORDER BY "Rating" DESC
    
    `

    return (await database.execute(sql, [], database.options)).rows
}
async function getUserRecommendation(username) {
    let sql = `
SELECT *
FROM "C##MOVIE_DATABASE"."SHOW"
WHERE "GENRE" IN(

      SELECT "Genre"
      FROM "C##MOVIE_DATABASE"."favourites" NATURAL JOIN "C##MOVIE_DATABASE"."Show")
FETCH NEXT 3 ROWS ONLY 
    
    `


    return (await database.execute(sql, [], database.options)).rows
}

//First it gets the top 4 genres the user prefers
//then it finds the anime ids with the most matches with those genres (COUNT(*) AS RECOMMENDATION)
//Then from that list, we exclude all the animes the user has already watched in the (<> ALL)
//and then we get picture ID and Title from the anime ids
/*async function getUserRecommendation(username) {
    let sql = `
SELECT ANIME_ID, RECOMMENDATION, (SELECT ANIME_TITLE FROM ANIME A WHERE R.ANIME_ID = A.ANIME_ID) AS TITLE, (SELECT PICTURE_ID FROM ANIME A WHERE R.ANIME_ID = A.ANIME_ID) AS PICTURE_ID
FROM 
(SELECT ANIME_ID, COUNT(*) AS RECOMMENDATION
FROM ANIME_GENRE 
	NATURAL JOIN 
	(SELECT GENRE_NAME FROM USER_PREFERENCE WHERE USERNAME = :username ORDER BY PREFERENCE_POINTS DESC FETCH NEXT 5 ROWS ONLY)
GROUP BY ANIME_ID
ORDER BY RECOMMENDATION DESC) R
WHERE ANIME_ID <> ALL(SELECT ANIME_ID FROM WATCHED_LIST WHERE USERNAME = :username)
FETCH NEXT 5 ROWS ONLY
    `
    return (await database.execute(sql, [username, username], database.options)).rows
}

async function getAllUserRecommendation(username) {
    let sql = `
SELECT ANIME_ID, RECOMMENDATION, (SELECT ANIME_TITLE FROM ANIME A WHERE R.ANIME_ID = A.ANIME_ID) AS ANIME_TITLE, (SELECT PICTURE_ID FROM ANIME A WHERE R.ANIME_ID = A.ANIME_ID) AS PICTURE_ID
FROM 
(SELECT ANIME_ID, COUNT(*) AS RECOMMENDATION
FROM ANIME_GENRE 
	NATURAL JOIN 
	(SELECT GENRE_NAME FROM USER_PREFERENCE WHERE USERNAME = :username ORDER BY PREFERENCE_POINTS DESC FETCH NEXT 5 ROWS ONLY)
GROUP BY ANIME_ID
ORDER BY RECOMMENDATION DESC) R
WHERE ANIME_ID <> ALL(SELECT ANIME_ID FROM WATCHED_LIST WHERE USERNAME = :username)
    `
    return (await database.execute(sql, [username, username], database.options)).rows
}*/

module.exports = {
    getNewlyReleasedMovies,
    getTopMovies,
 //   getUserRecommendation,
    getAllTopMovies,
    //getAllNewlyReleasedAnime,
   // getAllUserRecommendation
}