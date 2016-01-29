var Car = function(model, noise){
	this.model = model;

	this.noise = noise;

	number_of_wheels: 4

this.makeNoise = function () {
	console.log(this.noise)

}

}



var honda = new Car("Fit", "Beep Beep")

var mazda = new Car("3", "Zoom Zoom")

var hyundai = new Car ("Tucson", "Vroom Vroom")

hyundai.makeNoise()