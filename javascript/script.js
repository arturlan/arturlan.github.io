//canvas
var canvas = document.getElementById('canvas');
var ctx = canvas.getContext('2d');
var canvasWidth = canvas.width;
var canvasHeight = canvas.height;

//canvas for car
var canvasCar = document.getElementById('canvasCar');
var ctxCar = canvasCar.getContext('2d');

//canvas for enemie
var canvasEnemie = document.getElementById('canvasEnemie');
var ctxEnemy = canvasEnemie.getContext('2d');

//canvas for menu
var canvasMenu = document.getElementById('canvasMenu');
var ctxMenu = canvasMenu.getContext('2d');

//canvas background
var sprite = new Image();
sprite.src = 'images/sprite.png';
sprite.addEventListener('load', window.onload, false);

//globals
var car = new Car();
var isPlaying = false;
var enemies = [];
var createInterval;
//request animation frame for different browsers
var requestAnimFrame =  window.requestAnimationFrame ||
                        window.webkitRequestAnimationFrame ||
                        window.mozRequestAnimationFrame ||
                        window.oRequestAnimationFrame ||
                        window.msRequestAnimationFrame ||
                        function(callback) {
                            window.setTimeout(callback, 1000 / 60);
                        };










// Inits
window.onload = function init() {
	drawMenu();
	document.addEventListener('click', playGame, false);
	
};

function playGame() {
    drawBg();
    startLoop();
    drawInterval();
    document.addEventListener('keydown', checkKeyDown, false);
    document.addEventListener('keyup', checkKeyUp, false);
}

//draw menu
function drawMenu() {
	ctx.drawImage(sprite,1000,400,canvasWidth,canvasHeight,0,0,canvasWidth,canvasHeight);
}

var drawY1 = -5;
var drawY2 = 1600;
function moveBg() {
	drawY1 += 5;
	drawY2 += 5;
	if (drawY1 >= 1600) {
		drawY1 = -1600;
	} else if (drawY2 >= 1600) {
		drawY2 = -1600;
	}
	drawBg();
}

//draw backgroung
function drawBg() {
	ctx.clearRect(0,0,canvasWidth,canvasHeight);
	ctx.drawImage(sprite,0,0,canvasWidth,1600,0,drawY1,canvasWidth,1600);
	ctx.drawImage(sprite,0,0,canvasWidth,1600,0,drawY2,canvasWidth,1600);
}


//custom functions
Car.prototype.draw = function() {
	clearCar();
	console.log('Car Y: ' + this.drawY)
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

Car.prototype.checkDirection = function() {
	if(this.isUpKey && this.drawY > this.topY) {
		this.drawY -= this.speed;
		console.log(this.topY)
	}
	if(this.isRightKey && this.drawX < this.rightX) {
		this.drawX += this.speed;
	}
	if(this.isDownKey && this.drawY < this.bottomY) {
		this.drawY += this.speed;
	}
	if(this.isLeftKey && this.drawX > this.leftX ) {
		this.drawX -= this.speed;
	}
};

Enemy.prototype.draw = function() {
	this.drawY += this.speed;
	console.log('Enemy Y: ' + this.drawY)
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
	this.checkPosition();
};

Enemy.prototype.checkPosition = function() {
	if ((this.drawY + this.height) > 2000) {
		this.deleteEnemy();
	}
}

Enemy.prototype.deleteEnemy = function() {
	enemies.splice(enemies.indexOf(this), 1);
}

//main functionality
function createEnemy(number) {
    for (var i = 0; i < number; i++) {
        enemies[enemies.length] = new Enemy();
    }
}

function drawAllEnemies() {
    clearEnemy();
    for (var i = 0; i < enemies.length; i++) {
        enemies[i].draw();
    }
}

function drawInterval() {
	stopDrawInterval();
	createInterval = setInterval(function() {createEnemy(1);console.log(enemies);}, 5000);
}

function stopDrawInterval() {
	clearInterval(createInterval);
}

function loop() {
    if (isPlaying) {
        car.draw();
        moveBg();
        drawAllEnemies();
        requestAnimFrame(loop);
    }
}

function startLoop() {   
    if (!isPlaying) {
	    isPlaying = true;
	    loop();
}
}

function stopLoop() {
    isPlaying = false;
}

//clear car
function clearCar() {
	ctxCar.clearRect(0,0,canvasWidth,canvasHeight);
}

//clear enemie
function clearEnemy() {
	ctxEnemy.clearRect(0,0,canvasWidth,canvasHeight);
}

//clear menu
function clearMenu() {
	ctxMenu.clearRect(0,0,canvasWidth,canvasHeight);
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
