//global variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black = #000000, white = #FFFFFF, blue = #4572EA ;
Boolean rectON=false, ellipseON=false;
PFont buttonFont;
color green= #68E35E;
String buttonText1="click", buttonText2="click";
//
void setup() 
{
  //display geometry
  fullScreen(); //displayWidth, displayHeight
  println ( displayWidth, displayHeight);
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="turn phone";
  String orientation = (appWidth >= appHeight) ? ls : p ; //ternary operator
  println (DO, orientation);
  //if (orientation==p) println(instruct);
  if ( orientation==ls ) {
    println("Good to Go");
  } else { //Break our app if not landscape
    println(instruct);
    appWidth = displayWidth*0; 
    appHeight = displayHeight*0; 
  } 
  println("App Width", appWidth, "\tApp Height", appHeight);
  
  //Population
  buttonX1 = appWidth*1/4;
  buttonY1 = appHeight*3/4;
  buttonWidth1 = appWidth*1/5;
  buttonHeight1 = appHeight*1/5;
  rectDisplayX = appWidth*1/8;
  rectDisplayY = appHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  ellipseX = appWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = appWidth*1/8;
  ellipseYDiameter = appHeight*1/8;
  float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2;
  float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2;
  x = ellipseRectXCenter;
  y = ellipseRectYCenter;
  xDiameter = ellipseXDiameter;
  yDiameter = ellipseYDiameter;
  //text setup
  //
  println("start of console");
  buttonFont = createFont ("Andalus", 50);
  
 
}//End setup
//
void draw() 
{
  background(blue);
  rect( buttonX1, buttonY1, buttonWidth1, buttonHeight1 ); 
  if ( rectON== true && ellipseON==false) rect( rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); 
  //rect( ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter);
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  //
  fill(green);
  textAlign (CENTER, CENTER);
  //values : [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25);
  //
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(black);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() 
{
  rectON=false;
  ellipseON=false;
  if () {
    rectON=false;
  ellipseON=true;
  } else {
    rectON=true;
  ellipseON=false;
  }
  if (mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1) rectON=true;
}//End mousePressed
//
