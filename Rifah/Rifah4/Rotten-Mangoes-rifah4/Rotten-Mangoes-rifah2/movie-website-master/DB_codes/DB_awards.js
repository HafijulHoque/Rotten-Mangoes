const database = require('./database')
var oracledb=require('oracledb');
oracledb.autoCommit=true;

async function getAllAwards(){
    let sql = `
    SELECT *
    FROM "C##MOVIEDATABASE"."Award"
    `
    return  (await database.execute(sql, [], database.options)).rows
}

module.exports = {
    getAllAwards,
}