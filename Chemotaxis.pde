Boom [] stuff;
void setup(){
 size(500,500);

 stuff= new Boom[100];
 for(int i=0;i<stuff.length;i++){
   stuff[i]= new Boom();
   
 }
}
void draw(){

 for(int i =0; i<stuff.length;i++){
   stuff[i].movear();
   stuff[i].show();
  
   
 }
 
 }
 void mouseDragged(){
   for(int i =0; i<stuff.length;i++){
      stuff[i].movear();
   stuff[i].show();
  stuff[i].movear();
   stuff[i].expl();
   
 }
}
  

class Boom{
 int myX , myY;
   Boom(){
     myX =(int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     
   }
   void show(){
     fill(myX*0.8,myY*0.7,(myX * myY)/150);
 ellipse(myX,myY,5,5); 
  
}
void movear(){
  if(pmouseX >myX){
    myX= myX + (int)(Math.random()*3-1);
  }
    if(pmouseX <myX){
    myX= myX + (int)(Math.random()*3-2);
  }
   if(pmouseY >myY){
    myY= myY + (int)(Math.random()*3-1);
  }
   if(pmouseY <myY){
    myY= myY + (int)(Math.random()*3-2);
  }
}

void expl(){
   fill(myX*0.9,myY*0.8,(myX * myY)/150);
  ellipse(myX+10,myY+10,5,5);
  ellipse(myX+10,myY-10,5,5); 
  ellipse(myX-10,myY+10,5,5); 
  ellipse(myX-10,myY-10,5,5); 
 
  
  
}

}
