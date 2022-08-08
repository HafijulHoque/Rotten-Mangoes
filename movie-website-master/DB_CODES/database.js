const oracledb = require('oracledb');
oracledb.autoCommit = true;


// creates connection pool for oracledb
async function startup() {
    console.log('starting up database.');
    await oracledb.createPool({
        user: process.env.DB_USER || "c##moviedatabase",
        password: process.env.DB_PASS || "moviedatabase",
        connectstring: process.env.DB_CONNECTSTRING || "localhost/orcl",
        poolMin: 4,
        poolMax: 10,
        poolIncrement: 1
    });
    console.log('pool created');
}
