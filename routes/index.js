var express = require("express");
var router = express.Router();

var database = require("../database.js");
const session = require("express-session");

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express", session: req.session });
});

router.post("/login", function (request, response, next) {
  var user_email_address = request.body.user_email_address;
  var user_password = request.body.user_password;
  if (user_email_address && user_password) {
    query = `select * from user_login_info where email = "${user_email_address}"`;
    database.query(query, function (error, data) {
      if (data.length > 0) {
        console.log(data);
        for (var count = 0; count < data.length; count++) {
          if (data[count].password === user_password) {
            request.session.first_name = data[count].first_name;
            response.redirect("/form");
          } else {
            response.send("Incorrect password");
          }
        }
      } else {
        response.send("Incorrect email address");
      }
    });
  } else {
    response.send("Enter Details");
    response.end();
  }
});

router.post("/signup", function (request, response, next) {
  var fname = request.body.fname;
  var lname = request.body.lname;
  var email = request.body.email;
  console.log(request.body);
  var category = request.body.category;
  var password = request.body.password;
  if (fname && lname && email && category && password) {
    const query = `INSERT INTO user_login_info (first_name, last_name, email, password, category) VALUES (?, ?, ?, ?, ?)`;
    database.query(
      query,
      [fname, lname, email, password[0], category],
      function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/");
        }
      }
    );
  } else {
    response.send("Enter Details");
    response.end();
  }
});

router.get("/logout", function (request, response, next) {
  request.session.destroy();
  response.redirect("/");
});

module.exports = router;
