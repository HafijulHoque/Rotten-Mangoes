const database = require('./database')
async function getUserByUsername(username) {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Useraccount"
        WHERE "Username" = :username
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function insertAccountIntoDB(username, hashpassword,email) {
    console.log(email);
    let sql = `
        INSERT INTO "C##MOVIE_DATABASE"."Useraccount"
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