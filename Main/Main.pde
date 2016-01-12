//作成者ぎーわら
//こっちはクラスのテスト画面です
//controlP5を使用します
//起動するにはライブラリにてcontrolP5をインストールしてください
import controlP5.*;
import java.util.*;

//白い場所のどこをクリックしてるかの関数を定義します
//今回はプールをクリックしていると仮定して画面を作ります
String click="pool";

EditPool editPool;
void setup() {
  editPool=new EditPool();
  size(800, 800);
  
  //私が考えた最強の関数
  P5Pool(editPool.pointX, editPool.pointY,editPool.space1);
}

void draw() {
  
  background(255);  
  editPool.Visual();
  line(0,5,400,5);
  //if(Numberbox
  //println(Numberbox.getValue());
}

void mousePressed(){
  editPool.ButtonPushed();
  println("push!");
}