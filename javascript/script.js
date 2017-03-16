
// Inits
window.onload = function init() {
	var game = new GE();
	game.start();
	drawBg();
	startDrawing();
	car = new Car();
	document.addEventListener('keydown', checkKeyDown, false);
	document.addEventListener('keyup', checkKeyUp, false);

};

//canvas
var canvas = document.getElementById('canvas');
var ctx = canvas.getContext('2d');
var canvasWidth = canvas.width;
var canvasHeight = canvas.height;

//canvas for car
var canvasCar = document.getElementById('canvasCar');
var ctxCar = canvasCar.getContext('2d');
var car;
//canvas background
var sprite = new Image();
sprite.src = 'images/sprite.png';
sprite.addEventListener('load', window.onload, false);

//draw backgroung
function drawBg() {
	var srcX = 0;
	var srcY = 0;
	var drawX = 0;
	var drawY = 0;
	ctx.drawImage(sprite,srcX,srcY,canvasWidth,canvasHeight,drawX,drawY,canvasWidth,canvasHeight);
}
//Object of the car
function Car() {
	this.srcX = 1000;
	this.srcY = 0;
	this.drawX = 530;
	this.drawY = 500;
	this.width = 80;
	this.height = 200;
	this.speed = 2;
	this.isUpKey = false;
	this.isDownKey = false;
	this.isRightKey = false;
	this.isLeftKey = false;

}

Car.prototype.draw = function() {
	clearCar();
	this.checkKeys();
	ctxCar.drawImage(
		sprite,
		this.srcX,
		this.srcY,
		this.width,
		this.height,
		this.drawX,
		this.drawY,
		this.width,
		this.height

		);
};

Car.prototype.checkKeys = function() {
	if(this.isUpKey) {
		this.drawY -= this.speed;
	}
	if(this.isRightKey) {
		this.drawX += this.speed;
	}
	if(this.isDownKey) {
		this.drawY += this.speed;
	}
	if(this.isLeftKey) {
		this.drawX -= this.speed;
	}
};
//drawing objects
var fps = 10; 
var drawInterval;

function draw() {
	car.draw()
}

function startDrawing() {
	stopDrawing();
	drawInterval = setInterval(draw, fps);
}

function stopDrawing() {
	clearInterval(drawInterval);
}

//clear background
function clearBg() {
	ctx.clearRect(0,0,canvasWidth,canvasHeight);
}

//clear car
function clearCar() {
	ctxCar.clearRect(0,0,canvasWidth,canvasHeight);
}

//check key function
function checkKeyDown(k) {
	var keyID = (k.keyCode) ? k.keyCode : k.which;
	if (keyID === 38) {
		car.isUpKey = true;
		k.preventDefault();
	}
	if (keyID === 39) {
		car.isRightKey = true;
		k.preventDefault();
	}
	if (keyID === 40) {
		car.isDownKey = true;
		k.preventDefault();
	}
	if (keyID === 37) {
		car.isLeftKey = true;
		k.preventDefault();
	}
}

function checkKeyUp(k) {
	var keyID = (k.keyCode) ? k.keyCode : k.which;
	if (keyID === 38) {
		car.isUpKey = false;
		k.preventDefault();
	}
	if (keyID === 39) {
		car.isRightKey = false;
		k.preventDefault();
	}
	if (keyID === 40) {
		car.isDownKey = false;
		k.preventDefault();
	}
	if (keyID === 37) {
		car.isLeftKey = false;
		k.preventDefault();
	}
}

//game engine learned from edX HTML5 Part 2: Advanced Techniques.
var GE = function() {

	var mainLoop = function(time) {
		requestAnimationFrame(mainLoop);
	};

	var start = function() {
		requestAnimationFrame(mainLoop);
	};

	return {
		start: start
	};
}



