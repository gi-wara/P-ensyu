//起動するにはライブラリにてcontrolP5をインストールしてください
import controlP5.*;
import java.util.*;

String choose="Black";
ControlP5 cp5;

void setup() {
  size(400, 400);
  cp5 = new ControlP5(this);
  List l = Arrays.asList("Black", "Red", "Brue", "Yellow","Green", "Pink");
  /* add a ScrollableList, by default it behaves like a DropdownList */
  cp5.addScrollableList(choose)
     .setPosition(0, 100)
     .setSize(200, 100)
     .setBarHeight(25)
     .setItemHeight(20)
     .addItems(l)
     .setBarHeight(25) 
     .close()
     // .setType(ScrollableList.LIST) // currently supported DROPDOWN and LIST
     ;
     
     
}

void draw() {
  background(240);
}

void dropdown(String n) {
  /* request the selected item based on index n */
  choose=n;
  
  //println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
}