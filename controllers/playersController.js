var express = require("express");
var app = express();
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var session = reuire('express-sesssion')
var session;
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(session({
  secret:'#@&G3yhCV6i09812Km6*omt64Gj'
}
))

// Import the model (cat.js) to use its database functions.
var player = require("../models/player.js");

// Create all our routes and set up logic within those routes where required.
router.get("/", function (req, res) {
  player.all(function (data) {
    var hbsObject = {
      players: data
    };
    console.log(hbsObject);
    res.render("index", hbsObject);
   
    // if(req.body.username=='admin' && req.body.Password=='admin')
    // {
    //   session.id= req.body.username;
    // }

  });
});

router.get("/Registration", function (req, res) {
  player.all(function (data) {
    var hbsObject = {
      players: data
    };
    console.log(hbsObject);
    res.render("Registration", hbsObject);
  });
});

// router.get("/", function (req, res) {
 
//   player.all(function (data) {
//     var hbsObject = {
//       players: data
//     };
//     console.log(hbsObject);
//     res.render("index", hbsObject);
//   });
//   });





router.post("/api/players", function(req, res) {
  player.create(["FirstName", "LastName","Email","UserName","UserPassword", "Address","CityName","ZipCode","State"], [req.body.FirstName, req.body.LastName, req.body.Email,req.body.UserName,req.body.UserPassword,req.body.Address,req.body.CityName,req.body.ZipCode,req.body.State], function(result) {
 //Send back the ID of the new quote
res.json({ id: result.insertId });  });});






// Export routes for server.js to use.
module.exports = router;
