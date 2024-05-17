//Zilia Emani Valencia | March 29 2024 | Timeline

void setup() {
   size(950,400);
   background(200);
}

void draw() {
  background(200);
  drawRef();
  histEvent(150, 200,"2003", true, "Jude Bellingham was born in Stourbridge, UK");
  histEvent(250, 300, "2010", false, "Played for Birmingham City");
  histEvent(380, 200, "2019", true, "He debuted for Birmingham city");
  histEvent(480, 300, "2020", false, "Joined Borussia Dortmund");
  histEvent(580, 200, "2023", true, "Leaves Borussia Dortmund");
  histEvent(680, 300, "2023", false, "Signs to Real Madrid for 6 years");
  histEvent(780, 200, "2023", true, "He had his debut with Real Madrid ");
  histEvent(900, 300, "2023", false, "Bellingham scored a brace against Barca at the Camp Nou ");
 
  
}

void drawRef() { 
  textSize(40);
  fill(0);
  textAlign(CENTER);
  text("Jude Bellingham : Timeline",width/2,60);
  textSize(33);
  text("by Zilia Emani Valencia", width/2,100);
  strokeWeight(3);
  stroke(0);
  line(50,250,900,250);
  strokeWeight(2);
  line(50,240,50,260);
  line(900,240,900,260);
  line(width/2,240,width/2,260);
  textSize(20);
  text("2003",50,235);
  text("2023",900,235);

}

void histEvent(int x, int y, String val,boolean top, String detail) {
  if(top) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x-20, y-50);
  }
fill(127);
rectMode(CENTER);
rect(x, y, 100, 30, 8);
fill(255);
text(val, x, y+5);

if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
  textSize(20);
  fill(0);
  text(detail,width/2,375 );
 }
}
