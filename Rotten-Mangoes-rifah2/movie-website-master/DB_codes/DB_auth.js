const database = require('./database')
const oracledb=require('oracledb')
async function getUserByUsername(username) {
    console.log("from sql "+username);
    let sql = `
        SELECT "Username","Password","Email"
        FROM "C##MOVIEDATABASE"."Useraccount"
        WHERE "Username" = :username
    `
    const saffat=  (await database.execute(sql, [username], database.options))
    console.log(saffat);
    return saffat.rows
}

async function insertAccountIntoDB(username, hashpassword,email) {
    console.log(email);
    let sql = `
        INSERT INTO "C##MOVIEDATABASE"."Useraccount"
        (
            "Username",      
            "Password","Email"
        )
        VALUES(
            :USERNAME,
            :PASSWORD,
            :EMAIL
        )
    `
    return (await database.execute(sql, [username, hashpassword,email], database.options))
}


module.exports = {
    getUserByUsername,
    insertAccountIntoDB
}