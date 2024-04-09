const mysql = require("mysql");
const connection = mysql.createConnection({
  host: "localhost",
  database: "dbms_project",
  user: "root",
  password: "password",
});
connection.connect(function (error) {
  if (error) {
    throw error;
  } else {
    console.log("connected");
  }
});

module.exports = connection;
