const database = require('./database')
var oracledb=require('oracledb');
oracledb.autoCommit=true;
async function getUserByUsername(username) {
    console.log("from sql "+username);
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Useraccount"
        WHERE "Username" = :USERNAME
    `
    const saffat=  (await database.execute(sql, [username], database.options))
    console.log(saffat);
    return saffat.rows
}
async function getUser() {
    let sql = `
        SELECT *
        FROM "C##MOVIE_DATABASE"."Useraccount"
       
    `
  return  (await database.execute(sql, [], database.options)).rows

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

async function UpdateAccountIntoDB(username,email,bio,credit) {
    console.log(email);
    console.log(username);
    console.log(bio);
    console.log(credit)
    const voda="voda"

    let sql = `
        UPDATE "C##MOVIE_DATABASE"."Useraccount"
        SET  "Bio"=:voda,"Email"=:email,"Credit_card_no"=:credit
          WHERE "Username" = :USERNAME


        
    `
    console.log(bio);
    return (await database.execute(sql, [username,email,bio,credit], database.options))
}
async function UpdateAccountIntoDB1(username,bio) {
console.log("ok")
const voda=bio
    const name=username
    let sql = `
        UPDATE "C##MOVIE_DATABASE"."Useraccount"
        SET  "Bio"=:voda
where "Username"=:name
         



        
    `

    return (await database.execute(sql,[voda,name] , database.options))
}

module.exports = {
    getUserByUsername,
    insertAccountIntoDB,
    UpdateAccountIntoDB,
    getUser,
    UpdateAccountIntoDB1

}