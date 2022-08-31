const oracledb = require('oracledb');

async function run() {

  let connection;

  try {

    connection = await oracledb.getConnection({ user: "hr", password: "hr", connectionString: "localhost/orcl" });

    console.log("Successfully connected to Oracle Database");

    // Insert some data

    const sql = `insert into products (id, name, price, description) values(:1, :2, :3, :4)`;

    const rows =
      [[8, "p8", 100, "d8"],
      [9, "p9", 200, "d9"],
      [10, "p10", 300, "d10"]];

    let result = await connection.executeMany(sql, rows);

    console.log(result.rowsAffected, "Rows Inserted");

    connection.commit();

    // Now query the rows 

    result = await connection.execute(
      `select id, name, price, description from products order by id`,
      [],
      { resultSet: true, outFormat: oracledb.OUT_FORMAT_OBJECT });

    const rs = result.resultSet;
    let row;

    while ((row = await rs.getRow())) {
      console.log(row.ID, " ", row.NAME, " ", row.PRICE, " ", row.DESCRIPTION);
    }

    await rs.close();

  } catch (err) {
    console.error(err);
  } finally {
    if (connection) {
      try {
        await connection.close();
      } catch (err) {
        console.error(err);
      }
    }
  }
}

run();