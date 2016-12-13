var mysql = require("mysql");
var prompt = require('prompt');

var connection = mysql.createConnection({
    host: "127.0.0.1",
    port: 3306,

    // Database Username
    user: "root",

    //Database Password
    password: "",
    database: "Bamazon"
});

connection.connect(function(err, res) {
    if (err) throw err;

    console.log("connected as id " + connection.threadId);
});

connection.query('SELECT * FROM products', function(error, res) {
    if (error) throw eror;
    for (var i = 0; i < res.length; i++) {
        console.log(res[i].product_id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + res[i].price + " | " + res[i].stock_quantity);
    }

});

  prompt.start();

  prompt.get(['product_id', 'product_stock'], function (err, result) {
    if (err) { return onErr(err); }
    console.log('Command-line input received:');
    console.log('  prod: ' + result.product_id);
    console.log('  product_stock: ' + result.product_stock);
  });

  function onErr(err) {
    console.log(err);
    return 1;
  }
