int s;
PFont myFont;  
  
void setup(){  
size(300,300);  
background(204);  
}  
  
void draw(){  
background(204);  
s = second();
  
myClockDraw();  
}  
  
void myClockDraw(){  
translate(width/2,height/2);
fill(255);
ellipse(0,0,200,200);  
stroke(0);
fill(0);
text("butterfly",-20,-75);
text("egg",68,6);  
text("caterpillar",-20,80);  
text("chrysalis",-88,6);  
  
for(int i=1;i<=60;i++){  
pushMatrix();  
rotate(PI*2.0*i/60.0);
stroke(0);  
if(i%15==0){  
strokeWeight(3);  
line(0,-90,0,-100);  
}else if( i%5 ==0){  
strokeWeight(2);  
line(0,-92,0,-100);  
}else{  
strokeWeight(1);  
line(0,-95,0,-100);  
}  
popMatrix();  
}  
    
pushMatrix();  
rotate(PI*2*s/60+PI);  
stroke(0);
strokeWeight(1); 
line(0,0,0,90);
popMatrix();  
 
}  
