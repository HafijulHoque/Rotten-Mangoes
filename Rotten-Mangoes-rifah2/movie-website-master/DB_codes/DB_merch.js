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

async function getMerch(){
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Merchandise"
    `
}
async function getAllProductsAndPrice(username){
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Merch_order" 
        WHERE "Bool" = 0
        and "Username" = :username
    `
    return (await database.execute(sql,[username],database.options)).rows
}

async function insertProduct(username, product_id, price){
    let sql = `
    INSERT INTO "C##MOVIE_DATABASE"."Merch_order"
    VALUES(:username, :product_id, :price, 0)
    `

    return await database.execute(sql, [username, product_id, price], database.options)
}

async function decrementStock(product_id){
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."Merchandise"
    SET "In_Stock" = "In_Stock" - 1
    WHERE "Product_id" = :product_id
    `

    return await database.execute(sql, [product_id], database.options)
}

async function incrementStock(product_id){
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."Merchandise"
    SET "In_Stock" = "In_Stock" + 1
    WHERE "Product_id" = :product_id
    `

    return await database.execute(sql, [product_id], database.options)
}
module.exports = {
    getAllTshirts,
    getAllFigurines,
    getAllProductsAndPrice,
    insertProduct,
    getMerch,
    decrementStock,
    incrementStock,
}