var fs = require("fs");

//Ruby Version
// contents = IO.read("..trello-clone/index.html")

fs.readFile("../trello-clone/index.html", "utf8", function (error, contents)) {

console.log(contents.length);
var htmlLines = contents.split("\n");

console.log(htmlLines);

});