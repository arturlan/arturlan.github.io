// Inits
window.onload = function init() {
	var game = new GE();
	game.start();
};

//globals
var enemies = [];

//request animation frame for different browsers
var requestAnimFrame =  window.requestAnimationFrame ||
                        window.webkitRequestAnimationFrame ||
                        window.mozRequestAnimationFrame ||
                        window.oRequestAnimationFrame ||
                        window.msRequestAnimationFrame ||
                        function(callback) {
                            window.setTimeout(callback, 1000 / 60);
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

//canvas for enemie
var canvasEnemie = document.getElementById('canvasEnemie');
var ctxEnemy = canvasEnemie.getContext('2d');
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


Car.prototype.drawCar = function() {
	clearCar();
	this.checkDirection();
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

Enemy.prototype.drawEnemy = function() {
	clearEnemy();
	this.drawY += this.speed;
	ctxEnemy.drawImage(
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

Car.prototype.checkDirection = function() {
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
function draw() {
	car.drawCar();
	// enemy.drawEnemy();
	createEnemy(2);
	
}

function createEnemy(number) {
    for (var i = 0; i < number; i++) {
        enemies[enemies.length] = new Enemy();
    }
}

function drawAllEnemies() {
    clearEnemy();
    for (var i = 0; i < enemies.length; i++) {
        enemies[i].drawEnemy();
    }
}

//clear background
function clearBg() {
	ctx.clearRect(0,0,canvasWidth,canvasHeight);
}

//clear car
function clearCar() {
	ctxCar.clearRect(0,0,canvasWidth,canvasHeight);
}

//clear enemie
function clearEnemy() {
	ctxEnemy.clearRect(0,0,canvasWidth,canvasHeight);
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
		draw();
		requestAnimFrame(mainLoop);

	};
	//calls first
	var start = function() {
		drawBg();
		drawAllEnemies();
		car = new Car();
		enemy = new Enemy();
		document.addEventListener('keydown', checkKeyDown, false);
		document.addEventListener('keyup', checkKeyUp, false);
		requestAnimFrame(mainLoop);
	};

	return {
		start: start
	};
}



