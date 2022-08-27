const database = require('./database')
//no error.Ok

async function getShowsByREGEX(string) {
    let sql = `
    SELECT * FROM "C##MOVIEDATABASE"."Show" WHERE LOWER("Title") LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER("Title") LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}

async function getShowsByGenre(string){
    let sql = `
    SELECT * FROM "C##MOVIEDATABASE"."Show" WHERE LOWER("Genre") LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER("Genre") LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}
async function getMoviesByREGEX(string) {
    let sql = `
    SELECT * FROM "C##MOVIEDATABASE"."Show" NATURAL Join"C##MOVIEDATABASE"."Movies" WHERE LOWER("Title") LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER("Title") LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}
async function getTvSeriesByREGEX(string) {
    let sql = `
    SELECT * FROM "C##MOVIEDATABASE"."Show" NATURAL Join"C##MOVIEDATABASE"."Tv_series" WHERE LOWER("Title") LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER("Title") LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}
async function getActorsByREGEX(string) {
    let sql = `
    SELECT * FROM "C##MOVIEDATABASE"."Actor" WHERE LOWER("Name") LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER("Name") LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}
async function getDirectorsByREGEX(string) {
    let sql = `
    SELECT * FROM "C##MOVIEDATABASE"."Directors" WHERE LOWER("Name") LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER("Name") LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}

/*async function getCharactersByREGEX(string) {
    let sql = `
        SELECT ANIME_ID, FIRST_NAME, LAST_NAME, PICTURE_ID FROM CHARACTER
        WHERE (LOWER(FIRST_NAME) LIKE '${string[0]}' OR LOWER(LAST_NAME) LIKE '${string[0]}')
    `
    for (let i = 1; i < string.length; i++) {
        sql += ` OR (LOWER(FIRST_NAME) LIKE '${string[i]}' OR LOWER(LAST_NAME) LIKE '${string[i]}')`;
    }
    return (await database.execute(sql, [], database.options)).rows
}
*/
/*async function getVoiceActorsByREGEX(string) {
    let sql = `
        SELECT PERSONNEL_ID, FIRST_NAME, LAST_NAME
        FROM VOICE_ACTOR
        WHERE (LOWER(FIRST_NAME) LIKE '${string[0]}' OR LOWER(LAST_NAME) LIKE '${string[0]}')
    `
    for (let i = 1; i < string.length; i++) {
        sql += ` OR (LOWER(FIRST_NAME) LIKE '${string[i]}' OR LOWER(LAST_NAME) LIKE '${string[i]}')`;
    }
    return (await database.execute(sql, [], database.options)).rows
}*/


/*async function getWritersByREGEX(string) {
    let sql = `
        SELECT PERSONNEL_ID, FIRST_NAME, LAST_NAME
        FROM WRITER
        WHERE (LOWER(FIRST_NAME) LIKE '${string[0]}' OR LOWER(LAST_NAME) LIKE '${string[0]}')
    `
    for (let i = 1; i < string.length; i++) {
        sql += ` OR (LOWER(FIRST_NAME) LIKE '${string[i]}' OR LOWER(LAST_NAME) LIKE '${string[i]}')`;
    }
    return (await database.execute(sql, [], database.options)).rows
}*/



module.exports = {
    getDirectorsByREGEX,
    getActorsByREGEX,
    getMoviesByREGEX,
    getTvSeriesByREGEX,
    getShowsByREGEX,
    getShowsByGenre
    //getCharactersByREGEX,
    //getVoiceActorsByREGEX,
    //getWritersByREGEX
}