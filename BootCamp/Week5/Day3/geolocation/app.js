
$(document).on("ready", function(){

	if ("geolocation" in navigator) {
		//Browser has geolocation

		getUserLocation();
	}

	else {
		//Browser does not have geolocation
		console.log("Computer sucks")
	}

});






function getUserLocation () {

	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
	//Optional 3rd parameter
}

function successCallback (position) {

	console.log("Success!!!!!Q!WE@ER#");
	console.log(position);
		// console.log("Lat", position.coords.latitude);
		// console.log("Long", position.coords.longitude);

	$(".js-lat-value").text(position.coords.latitude);

	$(".js-lng-value").text(position.coords.longitude);
}

function errorCallback(error) {

	console.log("Error, WHATS WRONG WITH YOU?!?!?", error);
}