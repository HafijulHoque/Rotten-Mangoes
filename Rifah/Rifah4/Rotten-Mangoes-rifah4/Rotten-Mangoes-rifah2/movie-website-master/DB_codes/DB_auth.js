const database = require('./database')
var oracledb=require('oracledb');
oracledb.autoCommit=true;
async function getUserByUsername(username) {
    console.log("from sql "+username);
    let sql = `
        SELECT *
        FROM "C##MOVIEDATABASE"."Useraccount"
        WHERE "Username" = :USERNAME
    `
    const saffat=  (await database.execute(sql, [username], database.options))
    console.log(saffat);
    return saffat.rows
}
async function getUser() {
    let sql = `
        SELECT *
        FROM "C##MOVIEDATABASE"."Useraccount"
       
    `
  return  (await database.execute(sql, [], database.options)).rows

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
async function changePassword(username,password)
{
    let sql=`
    UPDATE "C##MOVIEDATABASE"."Useraccount"
    SET "Password"=:password
WHERE "Username"=:username
    `
    return (await database.execute(sql,[username,password],database.options))

}

async function UpdateAccountIntoDB(username,firstname,lastname,dob,email,bio) {


    let sql = `
        UPDATE "C##MOVIEDATABASE"."Useraccount"
        SET  "Username"=:username,"First_Name"=:firstname,"Last_Name"=:lastname,"Date_of_birth"=:dob,"Email"=:email,"Bio"=:bio
          WHERE "Username" = :USERNAME


        
    `
    console.log(bio);
    return (await database.execute(sql, [username,firstname,lastname,dob,email,bio], database.options))
}
async function UpdateAccountIntoDB1(username,bio) {
console.log("ok")
const voda=bio
    const name=username
    let sql = `
        UPDATE "C##MOVIEDATABASE"."Useraccount"
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
    UpdateAccountIntoDB1,
    changePassword

}