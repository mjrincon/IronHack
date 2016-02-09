
$(document).on("ready", function () {
	$(".js-show-characters").on("click", function () {
		fetchCharacters();
	});

	$(".js-add-jar").on("click", function () {
		publishJarJar();


	});



});

// DEFINITIONS
// -------------------------------------------------


function fetchCharacters () {

	$.ajax({

		url:"https://ironhack-characters.herokuapp.com/characters",

		success: function (response) {
			console.log("Everything gonna be alright mahn");

			displayCharacters(response);
		},

		error: function () {
			console.log("WHAT ARE WE GONNA DOO?!?!");

		}
	});
}

	function displayCharacters (characters) {

		characters.forEach(function (char) {

			var html = `
				<li>
					<h2> ${char.name} </h2>
					<p># ${char.id} </p>
					<p>Occupation: ${char.occupation}</p>
					<p>Weapon: ${char.weapon}</p>
				</li>
			`;

			$(".js-characters-list").append(html);
		});

	}


function publishJarJar () {
	var newCharacter= {
		name:"Darth Jar Jar",
		occupation:"Sith Lord",
		weapon:"Lightsaber"
	}
	$.ajax({
		type: "POST",

		url: "https://ironhack-characters.herokuapp.com/characters",

		data: newCharacter,

		success: function () {
			alert("Darth Jar Jar has been added succesfully");

		},

		error: function () {
			alert("Your dark side power is not strong enough to add this character")
		},
	});
}








