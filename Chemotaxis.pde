void setup(){
  size(800,800);
  for(int i=0; i<colony.length; i++){
    colony[i]= new Bact((int)(Math.random()*width),(int)(Math.random()*height));
  }
}
class Food{
  int x,y;
  Food(int x, int y){
    this.x=x;
    this.y=y;
  }
  void show(){
    noStroke();
    fill(255,200,0);
    rectMode(CENTER);
    
    rect(x,y,10,10);
  }
  void reset(){
    x=(int)(Math.random()*width-15);
    y=(int)(Math.random()*height-15);
  }
}
class Bact{
  int x,y,d;
  Bact(int x, int y){
    this.x=x;
    this.y=y;
    this.d=15;
  }
  void show(){
    fill(0,255,0,100);
    stroke(0,255,0);
    ellipse(x,y,d,d);
  }
  void move(){
    if(one.x>x){
      x+=(int)(Math.random()*5-2.2);
    }else{
      x+=(int)(Math.random()*5-2.8);
    }
    if(one.y>y){
      y+=(int)(Math.random()*5-2.2);
    }else{
      y+=(int)(Math.random()*5-2.8);
    }
  if(dist(x,y, one.x+5,one.y+5)<d){
    one.reset();
    d+=5;
  }
}
}
Bact [] colony=new Bact [10];

Food one= new Food(400,400);
Bact b= new Bact(200,200);
void draw(){
  background(0);
  for(int i=0;i<colony.length; i++){
    colony[i].show();
    colony[i].move();
  }
  one.show();
}

void mouseClicked(){
  one.reset(); 
}
