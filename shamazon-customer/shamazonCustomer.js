var mysql = require("mysql");
var inquirer = require("inquirer");

// create connection for database named "shamazon"
var connection = mysql.createConnection({
    host: "localhost",
    port: 8080,
    user: "root",
    password: "",
    database: "shamazon"
});

// establishes connection to mysql server 
connection.connect(function(err){
    if (err) throw err;
    console.log("connected as id " + connection.threadId);

    allProducts();
});

// displays all products on page
function allProducts(){
    connection.query("SELECT * FROM prodcuts", function(err, res){
        if (err) throw err;

        for (var i = 0; i < res.length; i++){
            console.log(res[i].item_id, res[i].name, res[i].price);
        }

        promptId();

    }); // connection.query end
} // allProducts() end

function promptId(){
    inquirer.prompt([
        {
            type: "input",
            name: "promptId",
            message: "Enter the id number of the item you want to purchase?"
        },
        {
            type: "input",
            name: "howMany",
            message: "Enter the quantity you'd like to purchase"
        }
    ]).then(function(response){
        var item = response.promptId
    })
}