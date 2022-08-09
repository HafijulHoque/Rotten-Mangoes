const database = require('./database')

async function getNewlyReleasedMovies() {
    let sql = `
        SELECT TITLE,RUNTIME,REVENUE
        FROM MOVIES
        ORDER BY RELEASE_DATE DESC
       
    `
    return (await database.execute(sql, [], database.options)).rows
}


async function getTopMovies() {
    let sql = `
        SELECT TITLE,RELEASE_DATE,RUNTIME,REVENUE
        FROM Rated
        ORDER BY STARS DESC
        
    `
    return (await database.execute(sql, [], database.options)).rows
}

async function getAllNewlyReleasedAnime() {
    let sql = `
     SELECT TITLE,RUNTIME,REVENUE
        FROM MOVIES
        ORDER BY RELEASE_DATE DESC
    `
    return (await database.execute(sql, [], database.options)).rows
}


async function getAllTopMovies() {
    let sql = `
          SELECT "Title"
        FROM "C##MOVIEDATABASE"."Rated"
    
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
    getAllNewlyReleasedAnime,
   // getAllUserRecommendation
}