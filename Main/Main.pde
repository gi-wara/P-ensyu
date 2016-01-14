//作成者ぎーわら
//こっちはクラスのテスト画面です

//PoolEditクラスを継承して他の説明欄のクラスを作っています

/*
controlP5を使用したNumberboxの数値を取り出す方法(多分重要）
Numberboxのクラス名.getValue();
Numberboxのクラス名は個々の説明欄クラスを参照

例：リソースの初期値を扱うクラス名を知りたい場合
text("リソースの初期値", pointX, pointY);        //void visual内にこのような表記があります
StartValue.setPosition(pointX+240, pointY-20);
↑.setpositionの前の部分がNumberboxのクラス名

*/

//controlP5を使用します
//起動するにはライブラリにてcontrolP5をインストールしてください
import controlP5.*;
import java.util.*;

//白い場所のどこをクリックしてるかの関数を定義します
//今回はプールをクリックしていると仮定して画面を作ります
String click="pool";
//ページが切り替わると消える時のフラグ
boolean  flag=true;

WholeEdit editWhole;
PoolEdit editPool;
GateEdit editGate;
FlowEdit editFlow;
SourceEdit editSource;
DrainEdit editDrain;

void setup() {
  
  //controlP5を初期化します
  cp5=new ControlP5(this);
  editWhole=new WholeEdit();
  editPool=new PoolEdit();
  editGate=new GateEdit();
  editFlow=new FlowEdit();
  editSource=new SourceEdit();
  size(1100, 800);
  
  //私が考えた最強の関数
  CP5setting();
  
}
  

void draw() {
  background(255); 
  
  //これで厚さの値を取得することができます
  println(int(Thickness.getValue()));
 
  if(flag==true){
    //設定画面の描写
  editWhole.Visual();
  }else if (flag==false){
  }
  
}
void mousePressed(){
  editWhole.ButtonPushed(mouseX,mouseY);
  //ラベルの欄内をクリックしたら記入フォームが出てくる
  editWhole.textForm();
}