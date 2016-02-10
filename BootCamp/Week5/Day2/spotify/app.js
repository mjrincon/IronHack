$(document).on("ready", function() {
$('.js-artist-submit').on('click', searchArtist);

});


function searchArtist (event){

event.preventDefault();
	console.debug('SUBMITTED');

	var artistsearch = $("#artist").val();

 $.ajax({
    url: "https://api.spotify.com/v1/search?type=artist&query="+artistsearch,
    success: function (response) {
    	displayArtist(response);
      // console.log(response.artists.items.slice(0,4));
      alert("SUCCESS!!!");
    },
    error: function () {
      alert("Damnnnnnnn, you done goofed");
    }
  });

}

function displayArtist (pepito) {



	var artistFind = pepito.artists.items.slice(0,4);

		artistFind.forEach(function (art) {
			console.log(art.images[0].url);
			var html = `
				<li>
					<h2> ${art.name} </h2>
					// <p> ${art.images} </p>

				</li>
			`;

			$(".js-artist-list").append(html);
		});

	}

	898075059955

routing: 063100277


