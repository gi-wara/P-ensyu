Hhgraph hhgraph;

void setup() {
size( 400, 800);
hhgraph=new Hhgraph();
}

void draw() {
background(197, 193, 255);
hhgraph.display();
}


void mousePressed() {
hhgraph.mouse();
}