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

//作ったクラスを初期化します
WholeEdit editWhole;
PoolEdit editPool;
GateEdit editGate;
FlowEdit editFlow;
StateEdit editState;
SourceEdit editSource;
DrainEdit editDrain;
EndConditionEdit editEndCondition;

void setup() {

  //controlP5を初期化します
  cp5=new ControlP5(this);
  editWhole=new WholeEdit();
  editPool=new PoolEdit();
  editGate=new GateEdit();
  editFlow=new FlowEdit();
  editState=new StateEdit();
  editSource=new SourceEdit();
  editDrain=new DrainEdit();
  editEndCondition=new EndConditionEdit();

  size(1100, 800);

  //conntrolP5を起動
  CP5setting();
}


void draw() {
  background(255); 

  //これで厚さの値を取得することができます
  println(int(Thickness.getValue()));

  editPool.Visual();
}
void mousePressed() {
  //ボタンの位置をクリックしたらボタンが出てくる
  editPool.ButtonPushed(mouseX, mouseY);
  //ラベルの欄内をクリックしたら記入フォームが出てくる
  editPool.textForm();
}