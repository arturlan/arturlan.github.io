
//canvas background
var background = function() {
	var canvasBackground = document.getElementById('canvasOne');
	var ctx = canvasBackground.getContext('2d');
}

//game engine learned from edX HTML5 Part 2: Advanced Techniques.
var GE = function() {

	var mainLoop = function(time) {
		background();
		requestAnimationFrame(mainLoop);
	};

	var start = function() {
		requestAnimationFrame(mainLoop);
	};

	return {
		start: start
	};
}

var game = new GE();
game.start();



