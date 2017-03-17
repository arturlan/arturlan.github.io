//Object of the car
function Car() {
	this.srcX = 1000;
	this.srcY = 0;
	this.drawX = 390; //530
	this.drawY = 500;
	this.width = 80;
	this.height = 200;
	this.speed = 2;
	this.isUpKey = false;
	this.isDownKey = false;
	this.isRightKey = false;
	this.isLeftKey = false;

}

//Object of the enemie
function Enemy() {
	var getIt = Math.random() < 0.5 ? 390 : 530;
	this.srcX = 1000;
	this.srcY = 200;
	this.drawX = getIt;
	this.drawY = -300;
	this.width = 80;
	this.height = 200;
	this.speed = 2;
}