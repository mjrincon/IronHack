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
      console.log(response);
      alert("SUCCESS!!!");
    },
    error: function () {
      alert("Damnnnnnnn, you done goofed");
    }
  });

}

function displayArtist (artists) {

		artists.forEach(function (art) {

			var html = `
				<li>
					<h2> ${art.name} </h2>
					// <p> ${art.images} </p>

				</li>
			`;

			$(".js-artist-list").append(html);
		});

	}