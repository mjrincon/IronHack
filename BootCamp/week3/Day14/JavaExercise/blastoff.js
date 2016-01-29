function blastOff(seconds) {
	while (seconds >= 0) {
		setTimeout(function(){}
			console.log(seconds);
			seconds -= 1;
		}, 1000
	}


console.log("Blastoff!")

}

blastOff(5)

