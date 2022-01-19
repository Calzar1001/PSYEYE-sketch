float angle = 0.2;
int offset = 60;
int scalar = 30;
float speed = 0.00005;

void setup()
  {
   size(127,127); 
  }
  
 void draw()
 {
  float x= offset + cos(angle)* scalar;
  float y= offset + sin(angle)* scalar;
  ellipse(x,y,40,40);
  angle += speed;
 }
