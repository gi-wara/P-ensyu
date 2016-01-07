//作成者ぎーわら
//こっちはクラスのテスト画面です
//controlP5を使用します
//起動するにはライブラリにてcontrolP5をインストールしてください
import controlP5.*;
import java.util.*;

//白い場所のどこをクリックしてるかの関数を定義します
//今回はプールをクリックしている場合の画面を作ります
String click="pool";

EditPool editPool;
void setup() {
  editPool=new EditPool();
  size(800, 800);
  P5Pool(editPool.pointX, editPool.pointY,editPool.space1, "Black");
}

void draw() {
  
  background(255);  
  editPool.Visual();
}

//これを付け加えておいてください
void dropdown(String n) {
  if (click=="pool") {
    if(n=="Black"){
      println(" (0,0,0)");
    }if(n=="Red"){
      println("(255, 0, 0)");
    }if(n=="Blue"){
      println("(0, 0, 255)");
    }if(n=="Yellow"){
      println("(255, 255, 0)");
    }if(n=="Green"){
      println("(0,255, 0)");
    }
  }
}

