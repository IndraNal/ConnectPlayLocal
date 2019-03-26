// Import the ORM to create functions that will interact with the database.
var orm = require("../config/orm.js");

var player = {
  all: function (cb) {
    orm.all("tbl_player", function (res) {
      cb(res);
    });
  },
  // The variables cols and vals are arrays.
  create: function (cols, vals, cb) {
    orm.create("tbl_player", cols, vals, function (res) {
      cb(res);
    });
  },
  update: function (objColVals, condition, cb) {
    orm.update("tbl_player", objColVals, condition, function (res) {
      cb(res);
    });
  }
};

// Export the database functions for the controller (catsController.js).
module.exports = player;
