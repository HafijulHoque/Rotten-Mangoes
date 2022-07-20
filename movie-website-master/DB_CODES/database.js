const express = require('express');

const router = express.Router();
const oracleDB = require('oracledb');

router.use(express.json());

router.route('/').get((req, res, next) => {
    try {
        
        oracleDB.getConnection(
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
                    const p = 'select * from "C##MOVIEDATABASE"."Useraccount"';
                    // when insert  { autoCommit: true } between [], and (e,r) for inserting values
                    con.execute(p, [], (e, r) => {
                        if (e) {
                            res.send(e);
                        } else {
                            console.log(r);
                            console.log(r.rows);
                            res.send(r);
                        }
                    });
                }
            }
        );
    } catch (e) {
        console.log(e);
    }
});

router.route('/').post((req, res, next) => {
    console.log(req.body);
    const { id, name } = req.body;
    try {
        oracleDB.getConnection(
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
                    const q = `insert into division books(${id},'${name}')`;

                    // when insert  { autoCommit: true } between [], and (e,r) for inserting values
                    con.execute(q, [], { autoCommit: true }, (e, r) => {
                        if (e) {
                            res.send(e);
                        } else {
                            res.send(r);
                        }
                    });
                }
            }
        );
    } catch (e) {
        console.log(e);
    }
});

module.exports = router;