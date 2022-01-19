

size(1080,720);



background(0);
noStroke();
for (int y = 0; y<= height; y += 10)
{
  for (int x = 0; x <= width; x += 10)
  {
    fill(255, 140);
    ellipse(x, y, 15, 15);
  }
}
