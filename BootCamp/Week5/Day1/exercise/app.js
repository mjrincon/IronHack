// app.js

console.log('APP JS START');


$(document).ready(function () {

$(function(){
	var myArray = ["one", "two", "three", "four", "five"];
	$.each(myArray, function(index, value){
		console.log("INDEX: " + index + " VALUE: " + value);
	});
});


});