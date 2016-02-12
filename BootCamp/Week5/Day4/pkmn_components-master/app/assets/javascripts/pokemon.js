// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri)
};

PokemonApp.Pokemon.prototype.render = function() {
	console.log("Rendering pokemon: #" + this.id);

	var self = this;

	$.ajax({

		url: "/api/pokemon/" + this.id,

		success: function (response) {
			self.info = response;
			console.log(self.info)
			// Pokemon Info
			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);
			$(".js-pkmn-hp").text(self.info.hp);
			$(".js-pkmn-attack").text(self.info.attack);
			$(".js-pkmn-defense").text(self.info.defense);
			$(".js-pkmn-speed").text(self.info.speed);
			$(".js-pkmn-sa").text(self.info.sp_atk);
			$(".js-pkmn-sd").text(self.info.sp_def);

			// Pokemon Type


			$(".js-pkmn-type").text(self.info.types[0].name);




			$(".js-pokemon-modal").modal("show");
		},
		error: function () {
			console.log("BAD. VERY BAD");
		}
	// 1st Ajax ends below
	});

	$.ajax({

		url: "self.info.sprites[0].resource_uri" + this.id,

		success: function (response) {
			self.info = response;
			console.log(self.info)
			// Pokemon Sprite
			$(".js-pkmn-sprites").text(self.info.response.image);
		},

		error: function () {
			console.log("EOEOROOSOEWOEOEOODSWOOOOO!");
		},
	});
}
PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/")
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

PokemonApp.PokemonEvolutions.getSprite = function (uri) {

}


$(document).on("ready",function(){
	$(".js-show-pokemon").on("click",function(event){
		var $button= $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

// "http://pokeapi.co/api/v1/sprite/10/



