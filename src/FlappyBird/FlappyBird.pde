import java.lang.*;
int birdx=50;
int birdy=400;

int pipe11x=300;
int pipe12x=300;

int pipe21x=750;
int pipe22x=750;
int birdYVelocity = 90;
double gravity = 3.5;
int score;
int x;
void setup(){
  size(800,800);
  background(#9B9696);
  noStroke();
  fill(#FF00DE);
  ellipse(birdx,birdy,50,50);
}
void draw(){
  background(#9B9696);
  noStroke();
  fill(#FF00DE);
  ellipse(birdx,birdy,50,50);
  birdy+=gravity;
  fill(#19F516);
  rect(pipe11x,0,50,200);
  fill(#19F516);
  rect(pipe12x,400,50,400);
  fill(#19F516);
  rect(pipe21x, 0,50,400);
  fill(#19F516);
  rect(pipe22x,600,50,200);
  boolean oof = intersectsPipes();
  if(oof){
    
    //.sleep(5000);
    System.exit(0);
  }
  if(pipe11x<=-55){
   pipe11x=800; 
  }
  if(pipe12x<=-55){
   pipe12x=800; 
  }
  if(pipe21x<=-55){
   pipe21x=800; 
  }
  if(pipe22x<=-55){
   pipe22x=800; 
  }
  fill(#F02C2C);
  textSize(25);
  text(score,50+x, 50);
  if(birdx==pipe11x){
    score++;
    x+=4;
  }
  if(birdx==pipe21x){
    score++;
    x-=4;
  }
  pipe11x-=2; 
  pipe12x-=2;
  pipe21x-=2; 
  pipe22x-=2;
}
void mousePressed(){
  birdy-=birdYVelocity;
}
boolean intersectsPipes() { 
     if (birdy < 200 && birdx > pipe11x && birdx < (pipe11x+50)){
       fill(#F02C2C);
    textSize(50);
    text("Game over!",200, 300);
          return true; }
    else if (birdy > 400 && birdx > pipe12x && birdx < (pipe12x+50)){
      fill(#F02C2C);
    textSize(50);
    text("Game over!",200, 300);
          return true; }
    else if (birdy < 400 && birdx > pipe21x && birdx < (pipe21x+50)){
      fill(#F02C2C);
    textSize(50);
    text("Game over!",200, 300);
          return true; }
    else if (birdy > 600 && birdx > pipe22x && birdx < (pipe22x+50)){
      fill(#F02C2C);
    textSize(50);
    text("Game over!",200, 300);
          return true; }
    else if (birdy > 800){
      fill(#F02C2C);
    textSize(50);
    text("Game over!",200, 300);
      return true;}
     else { return false; }
}