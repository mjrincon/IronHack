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
    error: function (response) {
      alert("Damnnnnnnn, you done goofed");
    }
  });

}

function displayArtist (response) {



	var artistFind = response.artists.items.slice(0,4);

		artistFind.forEach(function (art) {
			console.log(art.images.url);
			var html = `
				<li>
					<h2> ${art.name} </h2>
					// <p> ${art.images} </p>

				</li>
			`;

			$(".js-artist-list").append(html);
		});

	}



