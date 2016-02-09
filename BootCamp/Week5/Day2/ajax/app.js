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