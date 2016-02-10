if ("geolocation" in navigator) {
	//Browser has geolocation

	getUserLocation();
}

else {
	//Browser does not have geolocation
}


function getUserLocation () {
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback,);
	//Optional 3rd parameter
}

function successCallback (position) {

	console.log("Success!!!!!Q!WE@ER#");
	console.log(position);
	console.log("Lat", position.coords.latitude);
	console.log("Long", position.coords.longitude);


}

function.errorCallbacl (error) {

	console.log("Error, WHATS WRONG WITH YOU?!?!?", error);
}