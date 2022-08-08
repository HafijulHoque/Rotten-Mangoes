/* eslint-disable camelcase */
/* eslint-disable prettier/prettier */
const express = require('express');

const port = process.env.PORT || 4200; // its our port number

const router = express.Router();

const app = express();

router.use(express.json());

const oracledb = require('oracledb');

app.use(express.urlencoded());

 app.use(express.static('html'));

 app.get('/home', (req, res) => {
    res.sendFile(`${__dirname}/index.html`);
});

app.get('/register', (req, res) => {
    res.sendFile(`${__dirname}/singup.html`);
});

// for registering
app.post('/reg_action', async (req, res) => {
    // get the data from request
    const {
        First_name, Last_name, phoneNo, email, password, Credit_card_no, gender,
} = req.body;
    console.log(req.body);
    // res.send('founded');

    let connection;

    // connect with database
    try {
       connection = await oracledb.getConnection(
            {
                user: 'c##moviedatabase',
                password: 'moviedatabase',
                tns: 'localhost:1521/ORCL',
            },
            (err, con) => {
                if (err) {
                    res.send(err.message);
                } else {
                    console.log('Connection established');
                    const p = `insert into "C##MOVIEDATABASE"."Useraccount" values('aaaa','${password}','${First_name}','${Last_name}',''20-02-2022'','${email}','${Credit_card_no}','hha')`;

                    // when insert  { autoCommit: true } between [], and (e,r) for inserting values
                    con.execute(p, [], { autoCommit: true }, (e, r) => {
                        // console.log(e.errorNum);
                        if (e) {
                            if (e.errorNum === 6510) {
                                // send response back to client
                                res.send('same username is already present so no insert');
                            } else {
                                res.send('other errors');
                            }
                        } else {
                            res.send(r);
                        }
                    });
                }
            },
        );
    } catch (e) {
        console.log(e);
    }
});

// for log in

app.get('/log', (req, res) => {
    res.sendFile(`${__dirname}/login.html`);
});

app.post('/log_action', (req, res) => {
    // get the data from request
    const { username, password } = req.body;
     console.log(req.body);
    // res.send('founded');

    // connect with database
    try {
        oracledb.getConnection(
            {
              user: 'c##moviedatabase',
              password: 'moviedatabase',
              tns: 'localhost:1521/ORCL',
            },
            (err, con) => {
                if (err) {
                    res.send('db connnection error', err);
                } else {
                    console.log('Connection established');
                    const q = `select * from users where username='${username}'`;

                    // when insert  { autoCommit: true } between [], and (e,r) for inserting values
                    con.execute(q, [], { autoCommit: true }, (e, r) => {
                        // console.log(e);
                        if (e) {
                            // send response back to client
                            res.send('error on');
                        } else if (r.rows.length === 0) {
                            res.send('This username does not exist');
                        } else {
                            // res.send(r);
                            const another = `select * from users where password='${password}' AND username='${username}'`;

                            con.execute(another, [], { autoCommit: true }, (error, response) => {
                                // console.log(e);
                                if (error) {
                                    // send response back to client
                                    res.send('error on');
                                } else if (response.rows.length == 0) {
                                    res.send('password incorrect');
                                } else {
                                    for (let i = 0; i < response.rows.length; i++) {
                                        for (let k = 0; k < response.rows[i].length; k++) {
                                            process.stdout.write(`${response.rows[i][k]} `);
                                        }
                                        console.log();
                                    }
                                    res.send(r);
                                }
                            });
                        }
                    });
                }
            },
        );
    } catch (e) {
        console.log(e);
    }
});

app.listen(port, () => {
    console.log('Server Started at http://localhost:4200');
});

module.exports = router;
