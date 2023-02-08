const express = require('express')
const mysql = require('mysql')
const app = express()
const port = 3000

var pool = mysql.createPool({
    connectionLimit: 7,
    host: '35.239.200.82',
    user: 'root',
    password: '', 
    database: 'sample'
});

const query="select * from user where first_name=\"John\";"

app.get('/', (req, res) => {
  pool.getConnection(function(err, connection) {
    connection.query(query, function(err, results, fields) {
      if (err) {
        console.log(err.message);
      }
    });
    res.send(results);
  });
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
