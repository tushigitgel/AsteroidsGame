class Aster extends Floater{   
  double rotSpeed = ((Math.random()*6)-3);
  public Aster(){
    corners = 5;
    xCorners = new int []{(int)(Math.random()*11)+5, (int)(Math.random()*4)+2, (int)(Math.random()*5)-16, (int)(Math.random()*5)-12, (int)(Math.random()*2)+4};
    yCorners = new int []{(int)(Math.random()*4-2)+8, (int)(Math.random()*5)+11, (int)(Math.random()*7-2)+12, (int)(Math.random()*5)-8,(int)(Math.random()*5)-16};
    myColor = 140;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*12)-6;
    myYspeed = (int)(Math.random()*12)-6;
    myPointDirection = 0;
  }
  public void move()
  {       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    turn(rotSpeed);
  } 
}
