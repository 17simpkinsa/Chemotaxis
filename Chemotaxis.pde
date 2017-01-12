
Bacteria [] dots;
void setup()
{
  size(500,500);
  dots = new Bacteria[100];
  for (int i = 0; i < dots.length; i++)
    dots[i] = new Bacteria();
}  

void draw()
{
  background(0);
  for(int i = 0; i < dots.length; i++)
  {
    dots[i].move();
    dots[i].show();  
    
  }  
}

class Bacteria
{
  int x, y;
  Bacteria()  
  {
    x = (int)(Math.random() * 500);
    y = (int)(Math.random() * 500); 
  }  
  
  void show()
  {
    fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256)); 
    ellipse(x, y, 15, 15); 
  }
  
  void move()
  {
   int aX, aY;
   
   if(mouseX > x)
     aX = 0;
   else
     aX = 6;
     
   if(mouseY > y)
     aY = 0;
   else
     aY = 6;
   
     x = x + ((int)(Math.random() * 7) - aX);
     y = y + ((int)(Math.random() * 7) - aY);
 
  }  
}
