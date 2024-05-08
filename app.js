var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");

var session = require("express-session");
var database = require("./database.js");

var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");
// var formRouter = require("./routes/form");

var app = express();
app.use(
  session({
    secret: "websession",
    resave: true,
    saveUninitialized: true,
  })
);

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
app.use("/users", usersRouter);

function fetchDataFromDatabase(session, form_number, callback) {
  const id = session.user_id;
  const query = `SELECT * FROM page${form_number} WHERE user_id = "${id}"`;
  database.query(query, function (error, data) {
    if (error) {
      console.error("Error fetching data:", error);
      callback({});
    } else {
      if (data.length > 0) {
        // console.log("Data fetched from database:", data);
        callback(data[0]); // Assuming only one row is expected
      } else {
        console.log("No data found in database.");
        callback({});
      }
    }
  });
}

app.get("/form", (req, res) => {
  // Fetch data from the database
  fetchDataFromDatabase(req.session, 1, (data) => {
    res.render("form", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/page2", (req, res) => {
  // Fetch data from the database
  fetchDataFromDatabase(req.session, 2, (data) => {
    res.render("form2", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});
app.get("/page3", function (req, res) {
  //res.render("form3", { title: "Express", session: req.session }); // Renders the form.ejs view
  fetchDataFromDatabase(req.session, 3, (data) => {
    res.render("form3", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/page4", function (req, res) {
  // res.render("form4", { title: "Express", session: req.session }); // Renders the form.ejs view
  fetchDataFromDatabase(req.session, 4, (data) => {
    res.render("form4", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/page5", function (req, res) {
  //res.render("form5", { title: "Express", session: req.session }); // Renders the form.ejs view
  fetchDataFromDatabase(req.session, 5, (data) => {
    res.render("form5", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/page6", function (req, res) {
  //res.render("form6", { title: "Express", session: req.session }); // Renders the form.ejs view
  fetchDataFromDatabase(req.session, 6, (data) => {
    res.render("form6", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/page7", function (req, res) {
  // res.render("form7", { title: "Express", session: req.session }); // Renders the form.ejs view
  fetchDataFromDatabase(req.session, 7, (data) => {
    res.render("form7", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/page8", function (req, res) {
  // res.render("form7", { title: "Express", session: req.session }); // Renders the form.ejs view
  fetchDataFromDatabase(req.session, 8, (data) => {
    res.render("form8", {
      title: "Express",
      session: req.session,
      formData: data,
    });
  });
});

app.get("/declaration", function (req, res) {
  res.render("declaration", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/confir_page", function (req, res) {
  res.render("confir_page", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/signup", function (req, res) {
  res.render("signup", { title: "Express", session: req.session }); // Renders the form.ejs view
});

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render("error");
});

module.exports = app;
