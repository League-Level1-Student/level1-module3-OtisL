int birdx=50;
int birdy=400;

int pipe1x=300;

int pipe2x=300;

int birdYVelocity = 100;
int gravity = 4;

void setup(){
  size(800,800);
  background(#9B9696);
  noStroke();
  fill(#FF00DE);
  ellipse(birdx,birdy,50,50);
}
void draw(){
  //background(#9B9696);
  noStroke();
  fill(#FF00DE);
  ellipse(birdx,birdy,50,50);
  birdy+=gravity;
  fill(#19F516);
  rect(pipe1x, 0,50,300);
  fill(#19F516);
  rect(pipe2x,500,50,300);
  if(pipe1x<=-55){
   pipe1x=800; 
  }
  if(pipe2x<=-55){
   pipe2x=800; 
  }
  pipe1x-=2; 
  pipe2x-=2;
}
void mousePressed(){
  birdy-=birdYVelocity;
}