var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");

var session = require("express-session");

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

app.get("/form", function (req, res) {
  res.render("form", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/page2", function (req, res) {
  res.render("form2", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/page3", function (req, res) {
  res.render("form3", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/page4", function (req, res) {
  res.render("form4", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/page5", function (req, res) {
  res.render("form5", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/page6", function (req, res) {
  res.render("form6", { title: "Express", session: req.session }); // Renders the form.ejs view
});

app.get("/page7", function (req, res) {
  res.render("form7", { title: "Express", session: req.session }); // Renders the form.ejs view
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
