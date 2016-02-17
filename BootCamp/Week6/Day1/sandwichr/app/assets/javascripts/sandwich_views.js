$(document).ready(function(){


$(".js-add-ingredient").on("click", function(event) {
	var sandwichId = $(".js-sandwich").data("id");
	var ingredientId  = $(event.currentTarget).data("ingredient-id");
	console.log(ingredientId);
	var name = $(event.currentTarget).data("ingredient-name");
	addIngredient(sandwichId, ingredientId, name);

	var params = {

		ingredient_id = ingredientId
	}

});


});

function addIngredient(sandwich, ingredient, name) {
	$.ajax({

		type: "POST",
		data: {ingredient_id: ingredient},
		url: `/api/sandwiches/${sandwich}/ingredients/add`,

		success: function(response) {
			console.log('It worked!');

		},

		error: function() {


		}


	});


}