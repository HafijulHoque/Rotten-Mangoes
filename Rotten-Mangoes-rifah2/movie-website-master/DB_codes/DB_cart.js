const oracledb = require('oracledb');
const database = require("./database");
oracledb.autoCommit = true;

async function getTotalPrice(cartid){
    console.log("From DB");
    console.log(cartid);
    let sql = `
    SELECT * FROM "C##MOVIE_DATABASE"."Merchandise"
    WHERE "Product_id" IN (
        SELECT "Product_id" FROM "C##MOVIE_DATABASE"."Merch_order"
        WHERE "Cart_id" = :cartid
        ) 
    `
    const x = await database.execute(sql, [cartid], database.options)
    console.log(x)
    return (x).rows
}

async function getCartId(username){
    let sql = `
    SELECT "Cart_id" FROM "C##MOVIE_DATABASE"."Cart"
    WHERE "Username" = :username
    `

    return (await database.execute(sql, [username], database.options)).rows[0]
}

async function changeBool1(product_id, username){
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."Merch_order"
    SET "Bool" = 1
    WHERE "Product_id" = :product_id
    AND "Username" = :username
    `

    return await database.execute(sql, [product_id,username], database.options)
}
async function getquanity(username)
{
    let sql=`
       SELECT COUNT(*) as cnt,"Product_id","Username","Price"
    FROM "C##MOVIE_DATABASE"."Merch_order"
       Where "Username"=:username and "Bool"=0
    GROUP BY "Product_id","Username","Price"

    `
    return (await database.execute(sql, [username], database.options)).rows


}

async function changeBool2(product_id){
    let sql = `
    UPDATE "C##MOVIE_DATABASE"."Merch_order"
    SET "Bool" = 2
    WHERE "Product_id" = :product_id 
    AND "Username" = :username
    `

    return await database.execute(sql, [product_id], database.options)
}
module.exports = {
    getTotalPrice,
    getCartId,
    changeBool1,
    getquanity
}