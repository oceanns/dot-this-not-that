//global variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
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
  if (orientation==p) println(instruct);
  println("App Width", appWidth, "\tApp Height", appHeight);
  /*
  //Population
  buttonX1 = ;
  buttonY1 = ;
  buttonWidth1 = ;
  buttonHeight1 = ;
  buttonX2 = ;
  buttonY2 = ;
  buttonWidth2 = ;
  buttonHeight2 = ;
  */
}//End setup
//
void draw() 
{
  //rect( buttonX1, buttonY1, buttonWidth1, buttonHeight1 ); 
  //rect( buttonX2, buttonY2, buttonWidth2, buttonHeight2 ); 
  //rect(); 
  //rect(); 
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
