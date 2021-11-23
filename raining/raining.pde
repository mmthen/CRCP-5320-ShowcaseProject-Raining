/* in order to have the music play, press the key 'm' to listen to the alluring sounds.
press the key multiple times in a row to hear the overlapping sounds coming from the
melody running over and over again at once.
at first you see a little kid standing underneath an umberella with rain falling 
on him, but press the key 's' and you will be transformed to a different land. */

import processing.sound.*;

SoundFile file1;
SoundFile file2;

float dropY = 230;
float speed = 4;
float gravity = 0.15;

float startYString = 534;
float balloonY = 475;

//float balloonR = 255;
//float balloonG = 41;
//float balloonB = 120;

void setup() {
  file1 = new SoundFile(this, "melody.mp3");
  //file2 = new SoundFile(this, "harmony.mp3");
  size(800, 800);
  background(0);
}

void draw() {
  drawCloud(); //draw gray clouds
  bgDCoverup(); //draw black coverup that hides the raindrop streaks
  drawDrop(100, dropY, 7); //individual raindrops
  drawDrop(50, dropY, 9);
  drawDrop(130, dropY, 9);
  drawDrop(170, dropY, 9);
  drawDrop(200, dropY, 7);
  drawDrop(250, dropY, 9);
  drawDrop(295, dropY, 7);
  drawDrop(20, dropY, 8);
  drawDrop(320, dropY, 9);
  drawDrop(390, dropY, 7);
  drawDrop(415, dropY, 8);
  drawDrop(450, dropY, 7);
  drawDrop(500, dropY, 9);
  drawDrop(545, dropY, 8);
  drawDrop(610, dropY, 7);
  drawDrop(640, dropY, 9);
  drawDrop(700, dropY, 8);
  drawDrop(715, dropY, 9);
  drawDrop(760, dropY, 8);
  drawDrop(20, dropY, 9);
  drawDrop(43, dropY, 9);
  drawDrop(699, dropY, 9);
  drawDrop(432, dropY, 9);
  drawDrop(211, dropY, 9);

  dropY = dropY + speed; //speed of the drop
  //speed = speed + gravity;
  if (dropY>800) { //constraints
    dropY = 230;
  }
  if (dropY>300) {
    speed = speed + gravity;
  } else {
    speed = 3;
  }
  drawCoverup(); //coverup behind child to hide raindrops
  drawUmbrella();
  drawChild();
  sunnyDay(); //second screen
  startYString = startYString + (-1 * speed); //second screen speed 
  balloonY = balloonY + (-1* speed);
  if (startYString<-220) { //constraints
    startYString = 534;
  } 
  if (balloonY<0) {
    balloonY = startYString-59;
  }
}
void drawDrop(int x, float dropY, int size) { //raindrop model
  noStroke();
  fill(108, 126, 170);
  for (int i = 2; i < size; i++ ) {
    ellipse(x, dropY + i*4, i*2, i*2);
  }
}

void drawCloud() {
  noStroke();
  fill(200, 200, 200, 1);
  circle(50, 0, 300);
  circle(100, 75, 200);
  circle(150, 0, 200);
  circle(200, 50, 300);
  circle(250, 0, 300);
  circle(300, 50, 300);
  circle(350, 0, 300);
  circle(400, 75, 200);
  circle(450, 50, 300);
  circle(500, 0, 300);
  circle(550, 50, 200);
  circle(600, 75, 300);
  circle(750, 50, 300);
}

void drawUmbrella() {
  noStroke();
  fill(255);
  rect(460, 740, 10, 30);
  rect(463, 635, 3, 105);
  arc(460, 633, 270, 250, PI, TWO_PI);
  stroke(0);
  strokeWeight(0.5);
  ellipse(463, 515, 25, 15);
}

void drawChild() {
  noStroke();
  fill(209, 187, 114, 255);
  circle(400, 752, 80);
  fill(209, 187, 114, 240);
  rect(385, 790, 30, 90);
  quad (450, 750, 480, 750, 420, 900, 400, 900);
  arc(425, 726, 20, 20, 0, TWO_PI);
  noFill();
  stroke(0); 
  strokeWeight(2);
  curve(390, 723, 400, 725, 410, 715, 420, 705);
}

void drawCoverup () {
  noStroke();
  fill(0);
  rect(330, 535, 250, 410);
}

void bgDCoverup() {
  noStroke();
  fill(0);
  rect(0, 230, 800, 600);
}

void sunnyDay() { //second screen that toggles with the key 's' pressed
  if (key == 's' || key =='S') {
    background(255);
    noStroke();
    fill(112, 181, 247);
    circle(50, 50, 500);
    circle(100, 75, 500);
    circle(150, 0, 200);
    circle(200, 50, 300);
    circle(250, 0, 300);
    circle(300, 50, 300);
    circle(350, 0, 300);
    circle(400, 75, 500);
    circle(450, 50, 300);
    circle(500, 0, 300);
    circle(550, 50, 200);
    circle(600, 75, 300);
    circle(750, 50, 500);
    noStroke();
    fill(65, 227, 34);
    arc(400, 800, 900, 120, PI, TWO_PI);
    noStroke();
    fill(254, 255, 54);
    ellipse(20, 20, 280, 280);
    noStroke();
    fill(209, 187, 114, 255);
    circle(400, 752, 80);
    fill(209, 187, 114, 240);
    rect(385, 790, 30, 90);
    quad (450, 750, 480, 750, 420, 900, 400, 900);
    arc(425, 726, 20, 20, 0, TWO_PI);
    noFill();
    stroke(0); 
    strokeWeight(2);
    curve(390, 723, 400, 725, 410, 715, 420, 705);
    noStroke();
    fill(255, 41, 120);
    ellipse(465, balloonY, 100, 120);
    noStroke();
    fill(62, 64, 67);
    rect(456, startYString, 20, 10);
    strokeWeight(2);
    rect(463, startYString, 3, 215);
    noStroke();
    fill(#030D01);
    triangle( 30, 290, 80, 250, 110, 255);
    triangle(110, 255, 150, 290, 80, 250);
  }
}


void keyPressed() {

  if (key == 'm') {
    file1.play();
  } 
  //if (key == 'h') {
  //file2.play();
  //}
}
