
// Library stuff
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

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
  
  size(1080,720);
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
      rect(x, y, pots[0]/20, pots[1]/20);
      fill(pots[3], 55, pots[4]);
      ellipse(x,y,pots[2]/20,pots[3]/20);
    }
  }
  
   for (int i = 0; i <= 7; i++) 
   {
     
     pots[i] = arduino.analogRead(i);
    }
  
}
