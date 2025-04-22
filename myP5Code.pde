var snowX = [100, 200, 300];
var snowY = [50, 60, 70];
var snowSize = [20, 25, 30];

var img; 

void setup() {
  size(600, 400);
  img = loadImage("snowman.jpg"); 

  background(200, 230, 255);
  image(img, 400, 200, 150, 150); 

  for (var i = 0; i < snowX.length; i++) {
    drawSnowflake(snowX[i], snowY[i], snowSize[i]);
  }
}

void drawSnowflake(int x, int y, int size) {
  textSize(size);
  text("❆", x, y);
}

void mousePressed() {
  snowX.push(mouseX);
  snowY.push(mouseY);
  snowSize.push(int(random(20, 30)));

  background(200, 230, 255);
  image(img, 400, 200, 150, 150); 

  for (var i = 0; i < snowX.length; i++) {
    drawSnowflake(snowX[i], snowY[i], snowSize[i]);
  }
}
