var express = require("express");
var router = express.Router();

var database = require("../database.js");
const session = require("express-session");

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express", session: req.session });
});

router.post("/login", function (request, response, next) {
  //console.log(request.body);
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
            request.session.user_id = data[count].user_id;
            response.redirect("/form");
          } else {
            request.session.error = "Incorrect Password";
            response.redirect("/");
          }
        }
      } else {
        request.session.error = "Incorrect Email";
        response.redirect("/");
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
  if (password[0] != password[1]) {
    request.session.error = "Passwords do not match";
    response.redirect("/signup");
  }
  if (fname && lname && email && category && password) {
    check_dup = `select * from user_login_info where email = "${email}"`;
    database.query(check_dup, function (error, data) {
      if (data.length > 0) {
        console.log(data);
        request.session.error = "Email Already Registered";
        response.redirect("/signup");
      } else {
        const query = `INSERT INTO user_login_info (first_name, last_name, email, password, category) VALUES (?, ?, ?, ?, ?)`;
        database.query(
          query,
          [fname, lname, email, password[0], category],
          function (error, result) {
            if (error) {
              console.error("Error inserting data:", error);
              request.session.error = error;
              // Handle error appropriately
            } else {
              console.log("Data inserted successfully");
              // Handle successful insertion
              response.redirect("/");
            }
          }
        );
      }
    });
  } else {
    request.session.error = "Fill all details";
    response.redirect("/signup");
    response.end();
  }
});

router.post("/page1", function (request, response, next) {
  const id = request.session.user_id;
  query = `select * from page1 where user_id = "${id}"`;
  database.query(query, function (error, data) {
    if (data.length > 0) {
      const del_query = `delete from page1 where user_id = ${id}`;
      database.query(del_query, function (error, result) {
        if (error) {
          console.error("Error deleting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data deleted successfully");
        }
      });

      let info = [];
      info.push(id);

      for (let it in request.body) {
        info.push(request.body[it]);
      }
      const query = `INSERT INTO page1 (user_id, advert_number, application_number, department, date_of_application, post_applied_for, First_name, Last_name, DOB, Marital_Status, Fathers_Name, Middle_name, Nationality, Gender, category, ID_Proof, Correspondence_Address, Permanent_Address, Mobile, Alternate_Mobile, Landline_Number, email, alt_email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`;
      database.query(query, info, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page3");
        }
      });
    } else {
      let info = [];
      info.push(id);

      for (let it in request.body) {
        info.push(request.body[it]);
      }
      const query = `INSERT INTO page1 (user_id, advert_number, application_number, department, date_of_application, post_applied_for, First_name, Last_name, DOB, Marital_Status, Fathers_Name, Middle_name, Nationality, Gender, category, ID_Proof, Correspondence_Address, Permanent_Address, Mobile, Alternate_Mobile, Landline_Number, email, alt_email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`;
      database.query(query, info, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page3");
        }
      });
    }
  });
  // console.log(request.body);
});

router.post("/page3", function (request, response, next) {
  console.log(request.body);

  response.redirect("/page4");
});

router.get("/logout", function (request, response, next) {
  request.session.destroy();
  response.redirect("/");
});

module.exports = router;
