var body = $('body');

//canvas background
var background = function() {
	var canvas1 = document.getElementById('canvasOne');
	var ctx = canvas1.getContext('2d');

	ctx.fillStyle = 'rgba(0,200,0,1)';
	ctx.fillRect(36, 10, 22, 22);
}
//game engine learned from edX HTML5 Part 2: Advanced Techniques.

var GE = function() {

	var mainLoop = function(time) {
		background();
		requestAnimationFrame(mainLoop);
	};
/*
	var start = function() {
		requestAnimationFrame(mainLoop);
	};
*/
	return {
		start: mainLoop
	};
}

var game = new GE();
game.start();



