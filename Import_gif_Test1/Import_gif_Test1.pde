
// Library stuff
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

//External image
PImage bwcircle;

//Pot Array
float[] pots;


void setup()
{
  // Prints out the available serial ports.
  println(Arduino.list());
  
    arduino = new Arduino(this, Arduino.list()[2], 57600);
    
    pots = new float[8];
  
   // Set the Arduino digital pins as inputs.
  for (int i = 0; i <= 9; i++)
    arduino.pinMode(i, Arduino.INPUT);
  for (int i = 10; i <= 13; i++)
    arduino.pinMode(i, Arduino.OUTPUT);
    
    //External image
  bwcircle = loadImage("bwcircle.gif");
   
  // TVOUT SIZE 
  //size(128,96);
  // *4 =
  //size(512,384);
  
  fullScreen(2);
  
  background(0);
  noStroke();
}

void draw() 
{
  clear();
  
  for (int y = 0; y<= height; y += 10)
  {
    for (int x = 0; x <= width; x += 10)
    {
      fill(255, 140);
      image(bwcircle,x, y, pots[0]/20, pots[1]/20);
    }
  }
  
image(bwcircle, width/2, height/2);

   for (int i = 0; i <= 7; i++) 
   {
     pots[i] = arduino.analogRead(i);
    }
  
}
