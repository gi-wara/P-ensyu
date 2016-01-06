class Hhgraph {
int hhsizeX = 380;
int hhsizeY = 795;
int hhbuttonX = 0;
int hha=1;
int hhtab=1;
int [][]hhhantei = new int [4][4]; 
int[][] hhbutton = new int [4][4];
boolean [][] hhbuttoncolor= new boolean [4][4];
int [] hhEdit = new int [6];
int [] hhbuttoncolor2 = new int [6];

Hhgraph() {
init();
}
void init() {
for (int x=0; x<4; x++) {
for (int y=0; y<4; y++) {
hhbutton[x][y]=0;
hhbuttoncolor[x][y]=false;
}
}
for (int i=0; i<6; i++) {
hhEdit[i]=0;
hhbuttoncolor2[i]=0;
}
}

void display() {
fill(0);
hhgraph.hhflame(hhsizeX, hhsizeY);
if (hhtab==1) {
hhgraph.hhbutton1();
} else if (hhtab==2) {
hhgraph.hhbutton2();
} else if (hhtab==3) {
hhgraph.hhbutton3();
} else if (hhtab==4) {
hhgraph.hhbutton4();
}
}





//----------------------------------------------------------------------------------
//graph

//Select
void hhSelect(int x, int y) {
noFill();
strokeWeight(1);
triangle(x-10, y-17, x-10, y+13, x+15, y+7);
quad(x-1, y+11, x+4, y+10, x+9, y+18, x+3, y+21);
}

//TextL
void hhTextL(int x, int y) {
text("TextL", x-3, y+6);
}

//GroupBo
void hhGroupBo(int x, int y) {
text("GroupBo", x-13, y+6);
}

//Chart
void hhChart(int x, int y) {
text("Chart", x-5, y+6 );
}

//poul
void hhPoul(int x, int y) {
ellipse(x, y, 45, 35);
}

//Gate
void hhGate(int x, int y) {
quad(x-18, y, x, y-13, x+18, y, x, y+13);
}

//Resourse Conection
void hhResourseConection(int x, int y) {
line(x-20, y+11, x+20, y+11);
line(x+10, y+3, x+20, y+11);
line(x+10, y+19, x+20, y+11);
}

//State Conection
void StateConection(int x, int y) {
line(x-20, y+11, x-14, y+11);
line(x-5, y+11, x+1, y+11);
line(x+10, y+11, x+16, y+11);
line(x+10, y+3, x+20, y+11);
line(x+10, y+19, x+20, y+11);
}

//Sourse
void hhSourse(int x, int y) {
triangle(60, y-7, x-20, y+23, x+20, y+23);
}

//Drain
void hhDrain(int x, int y) {
triangle(x, y+25, x-20, y-3, x+20, y-3);
}

//Converter
void hhConverter(int x, int y) {
triangle(x-15, y-7, x-15, y+27, x+22, y+11);
line(x, y-6, x, y+25);
}

//Trade
void hhTrade(int x, int y) {
triangle(x-15, y-7, x-15, y+13, x+17, y+3);
triangle(x-15, y+16, x+17, y+6, x+17, y+27);
line(x, y-7, x, y+26);
}

//Delav
void hhDelav(int x, int y) {
ellipse(x, y, 40, 30);
strokeWeight(2);
triangle(x, y, x-6, y-8, x+6, y-8);
triangle(x, y, x-6, y+8, x+6, y+8);
}

//Register
void hhRegister(int x, int y) {
fill(40, 37, 95);
rect(x-19, y-15, 38, 28);
stroke(255, 255, 255);
line(x-3, y-2, x+3, y+4);
line(x-3, y+4, x+3, y-2);
stroke(0, 0, 0);
}

//FndCondition
void hhFndCondition(int x, int y) {
fill(-1);
rect(x-19, y-15, 38, 28);
fill(40, 37, 95);
rect(x-10, y-7, 20, 14);
}

//ArtificialPlaver
void hhArtificialPlaver(int x, int y) {
fill(-1);
rect(x-19, y-15, 38, 28);
fill(0);
textSize(21);
text("AP", x-12, y+8);
}


void hhflame(int x, int y) {
stroke(164, 163, 167);
strokeWeight(1);
line(3, 32, x, 32);
stroke(0);
strokeWeight(6);
line(3, 4, x, 4);
strokeWeight(4);
line(3, 0, 3, y);
line(x, 0, x, y);
line(x/4, 4, x/4, 30);
line(x/2, 4, x/2, 30);
line(x/4*3, 4, x/4*3, 30);
line(x, 4, x, 30);
strokeWeight(3);
if (hhtab==1) {
line(x/4, 32, x, 32);
} else if (hhtab==2) {
line(3, 32, x/4, 32);
line(x/2, 32, x, 32);
} else if (hhtab==3) {
line(3, 32, x/2, 32);
line(x/4*3, 32, x, 32);
} else if (hhtab==4) {
line(3, 32, x/4*3, 32);
}
line(3, 288, x, 288);
line(3, y, x, y);
textSize(16);
text("Graph", 26, 25);
text("Edit", x/4+33, 25);
text("File", x/2+32, 25);
text("Run", x/4*3+31, 25);
}
void mouse() {
if (4<mouseY && mouseY<32) {
if (3<mouseX && mouseX<hhsizeX/4) {
hhtab=1;
} else if (hhsizeX/4<mouseX && mouseX<hhsizeX/2) {
hhtab=2;
} else if (hhsizeX/2<mouseX && mouseX<hhsizeX/4*3) {
hhtab=3;
} else if (hhsizeX/4*3<mouseX && mouseX<hhsizeX) {
hhtab=4;
}
}

for (int x=0; x<4; x++) {
for (int y=0; y<4; y++) {
strokeWeight(3);
noFill();
if (25+85*x<mouseX && mouseX<95+85*x && 40+62*y<mouseY && mouseY<95+62*y) {
hhhantei[x][y]=1;
} else {
hhhantei[x][y]=0;
}
}
}
}

void hhbutton1() {
for (int x=0; x<4; x++) {
for (int y=0; y<4; y++) {
strokeWeight(3);
noFill();
if (25+85*x<mouseX && mouseX<95+85*x && 40+62*y<mouseY && mouseY<95+62*y) {
hhbuttoncolor[x][y]=true;
} else {
hhbuttoncolor[x][y]=false;
}
if (hhbuttoncolor[x][y]==true) {
fill(237, 234, 255);
}
if (hhhantei[x][y]==1) {
fill(237, 234, 255);
hha=1;
} else {
hha=0;
}
rect(25+85*x+hha, 40+62*y+hha, 70, 55);
line(25+85*x+hha, 96+62*y, 95+85*x+hha, 96+62*y);
line(97+85*x, 41+62*y, 97+85*x, 96+62*y);
}
}



//Select
hhgraph.hhSelect(60+hhhantei[0][0], 67+hhhantei[0][0]);

fill(0);
textSize(14);

//TextL
hhgraph.hhTextL(130+hhhantei[1][0], 67+hhhantei[1][0]);

//GroupBo
hhgraph.hhGroupBo(215+hhhantei[2][0], 67+hhhantei[2][0]);

//Chart
hhgraph.hhChart( 300+hhhantei[3][0], 67+hhhantei[3][0] );

strokeWeight(3);
fill(-1);

//Poul
hhgraph.hhPoul(60+hhhantei[0][1], 130+hhhantei[0][1]);

//Gate
hhgraph.hhGate(145+hhhantei[1][1], 130+hhhantei[1][1]);

//Resourse Conection 
hhgraph.hhResourseConection(230+hhhantei[2][1], 119+hhhantei[2][1]);

//State Conection
hhgraph.StateConection(315+hhhantei[3][1], 119+hhhantei[3][1]);

//Sourse;
hhgraph.hhSourse(60+hhhantei[0][2], 181+hhhantei[0][2]);

//Drain
hhgraph.hhDrain(145+hhhantei[1][2], 181+hhhantei[1][2]);

//Converter
hhgraph.hhConverter(230+hhhantei[2][2], 181+hhhantei[2][2]);

//Trade
hhgraph.hhTrade(315+hhhantei[3][2], 181+hhhantei[3][2]);

//Delav (int x, int y) {
hhgraph.hhDelav (60+hhhantei[0][3], 254+hhhantei[0][3]);

strokeWeight(3);

//Register
hhgraph.hhRegister(145+hhhantei[1][3], 254+hhhantei[1][3]);

//FndCondition
hhgraph.hhFndCondition(230+hhhantei[2][3], 254+hhhantei[2][3]);

//ArtificialPlaver
hhgraph.hhArtificialPlaver(315+hhhantei[3][3], 254+hhhantei[3][3]);
}
//----------------------------------------------------------
void hhbutton2() {
strokeWeight(3);
for (int i=0; i<6; i++) {
if (148<mouseX && mouseX<358) {
if (42+i*39<mouseY && mouseY<72+i*39) {
hhbuttoncolor2[i]=1;
} else {
hhbuttoncolor2[i]=0;
}
}
if (hhbuttoncolor2[i]==1) {
fill(237, 234, 255);
} else {
noFill();
}
rect(148, 42+i*39, 210, 30);
line(148, 73+i*39, 358, 73+i*39);
line(359, 42+i*39, 359, 73+i*39);
}

fill(0);
textSize(15);
text("Select All (A)", 208, 63);
text("Copy (C)", 220, 102);
text("Paste (V)", 219, 141);
text("Undo (Z)", 220, 180);
text("Redo (Y)", 222, 219);
text("Zoom (M)", 220, 258);
}

//----------------------------------------------------------

void hhbutton3() {
strokeWeight(3);
for (int i=0; i<6; i++) {
if (148<mouseX && mouseX<358) {
if (42+i*39<mouseY && mouseY<72+i*39) {
hhbuttoncolor2[i]=1;
} else {
hhbuttoncolor2[i]=0;
}
}
if (hhbuttoncolor2[i]==1) {
fill(237, 234, 255);
} else {
noFill();
}
rect(148, 42+i*39, 210, 30);
line(148, 73+i*39, 358, 73+i*39);
line(359, 42+i*39, 359, 73+i*39);
}
fill(0);
textSize(15);
text("New (N)", 225, 63);
text("Open (O)", 220, 102);
text("Inport (I)", 219, 141);
text("Save (S)", 225, 180);
text("Export Selection (E)", 185, 219);
text("Save as SVG (G)", 200, 258);
}

///---------------------------------------------------
void hhbutton4() {
strokeWeight(3);
for (int i=0; i<2; i++) {
if (148<mouseX && mouseX<358) {
if (42+i*39<mouseY && mouseY<72+i*39) {
hhbuttoncolor2[i]=1;
} else {
hhbuttoncolor2[i]=0;
}
}
if (hhbuttoncolor2[i]==1) {
fill(237, 234, 255);
} else {
noFill();
}
rect(148, 42+i*39, 210, 30);
line(148, 73+i*39, 358, 73+i*39);
line(359, 42+i*39, 359, 73+i*39);
}
for (int i=2; i<4; i++) {
noFill();
rect(148, 42+i*39, 135, 30);
line(148, 73+i*39, 284, 73+i*39);

line(261, 56+i*39, 286, 56+i*39);
line(261, 42+i*39, 261, 73+i*39);
line(286, 42+i*39, 286, 73+i*39);
fill(-1);
rect(148, 42+i*39, 110, 30);
fill(0);
triangle(273, 46+i*39, 267, 52+i*39, 279, 52+i*39);
triangle(273, 67+i*39, 267, 60+i*39, 279, 60+i*39);
}

fill(0);

text("Quick Run", 213, 63);
text("Multiple Runs", 195, 102);
text("Runs", 25, 141);
text("Visivle Runs", 25, 180);
}
}