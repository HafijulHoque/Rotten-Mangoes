const database = require('./database')

async function getAllTshirts(){
    let sql = `
        SELECT *
        FROM "C##MOVIEDATABASE"."Merchandise" NATURAL JOIN "C##MOVIEDATABASE"."T_shirt"
    `
    return (await database.execute(sql,[],database.options)).rows
}

async function getAllFigurines(){
    let sql = `
        SELECT *
        FROM "C##MOVIEDATABASE"."Merchandise" NATURAL JOIN "C##MOVIEDATABASE"."Figurine"
    `
    return (await database.execute(sql,[],database.options)).rows
}
module.exports = {
    getAllTshirts,
    getAllFigurines
}