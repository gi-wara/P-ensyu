//作成者ぎーわら
//こっちはクラスのテスト画面です
//controlP5を使用します
//起動するにはライブラリにてcontrolP5をインストールしてください
import controlP5.*;
import java.util.*;

//白い場所のどこをクリックしてるかの関数を定義します
//今回はプールをクリックしていると仮定して画面を作ります
String click="pool";
//ページが切り替わると消える時のフラグ
boolean  flag=true;

EditPool editPool;
void setup() {
  editPool=new EditPool();
  size(800, 800);
  //私が考えた最強の関数
  P5Pool(editPool.pointX, editPool.pointY,editPool.space1,flag); 
  
}

void draw() {
  
  background(255);  
  if(flag==true){
  editPool.Visual();
  
  }
  
}

void mousePressed(){
  editPool.ButtonPushed(mouseX,mouseY);
  editPool.textForm();
  
  //画面が切り替わるときのテスト
  if(mouseY>600){
    flag=false;
  }
}