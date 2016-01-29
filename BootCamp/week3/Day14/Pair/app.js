var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    //console.log(episodes[0])

    	for (var i = 0; i < episodes.length -1; i++) {

    		console.log(episodes[i].title + " Episode # " + episodes[i].episode_number)
    		console.log(episodes[i].description)

    		function Rating(episode_rating) {
    			var star =  "";
    			for(var j = 1; j < episode_rating; j++) {
    				star= star + "*";
    			}

    			return console.log("Rating: " + episode_rating + " " + star);
    		};

    		Rating(episodes[i].rating);


    	}
}


fs.readFile("./shame.json", 'utf8', fileActions);

