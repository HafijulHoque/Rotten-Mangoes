async function getUserByUsername(username) {
    let sql = `
        SELECT *
        FROM USERaccount
        WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function insertAccountIntoDB(username, email, hashpassword) {
    let sql = `
        INSERT INTO
        ACCOUNT(
            USERNAME,      
            PASSWORD,EMAIL
        )
        VALUES(
            :USERNAME,
            :PASSWORD,
            :EMAIL
        )
    `
    return (await database.execute(sql, [username, email, hashpassword], database.options))
}


module.exports = {
    getUserByUsername,
    insertAccountIntoDB
}