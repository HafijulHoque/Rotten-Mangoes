const database = require('./database')

async function getAllTshirts(){
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Merchandise" NATURAL JOIN "C##MOVIE_DATABASE"."T_shirt"
    `
    return (await database.execute(sql,[],database.options)).rows
}

async function getAllFigurines(){
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Merchandise" NATURAL JOIN "C##MOVIE_DATABASE"."Figurine"
    `
    return (await database.execute(sql,[],database.options)).rows
}
module.exports = {
    getAllTshirts,
    getAllFigurines
}