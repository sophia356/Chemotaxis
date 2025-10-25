Bacteria [] bob;
void setup(){
 size(500,500);
 bob = new Bacteria[100];
 for(int i = 0; i < bob.length; i++){
   bob[i] = new Bacteria();
 }
}
class Bacteria {
  int myX, myY, myColor;
  Bacteria(){ 
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color(0, 200, 0);
  }
  void move(){
   if(mouseX > myX){
     myX = myX + (int)(Math.random()*5)-1;
   }
   else{
     myX = myX +(int)(Math.random()*5)-3;
   }
   if(mouseY > myY){
     myY = myY + (int)(Math.random()*5)-1;
   }
   else{
     myY = myY + (int)(Math.random()*5)-3;
   }
  }
  void show(){
    fill(myColor);
    ellipse(myX, myY, 20,20);
  }
}

void draw(){
  background(0);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
}
