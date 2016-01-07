//作成者ぎーわら
//controlP5を使用します
//起動するにはライブラリにてcontrolP5をインストールしてください
import controlP5.*;
//白いスペース内のプールを選択したときの設定欄の描写クラス
class EditPool{
  //テキストの配置を決める関数置き場
  int pointX;
  int returnPointX;
  int pointY;
  int returnPointY;
  int space1;
  int space2;
  //フォントを設定しないとうまく動かないのよね
  PFont font;
  List ColorChooseList;
  
  EditPool(){
    //関数に定数を与える
    pointX=50;
    returnPointX=50;
    pointY=40;
    returnPointY=40;
    space1=40;
    space2=50;
    //フォント設定
    font = createFont("MS Gothic",48,true);
    textFont(font);
    //プルダウンリストの描写
    ColorChooseList=Arrays.asList("Black","Red","Brue","Yellow","Green","Pink");
    
  }
  void test(){
    println("tent");
  }
  //設定画面の描写
  void Visual(){
    textSize(23);
    fill(0);
    text("プール",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("Activation",pointX,pointY);
    pointY+=space1;
    //↓pull mode
    text("リソース不足のとき",pointX,pointY);
    pointY+=space1;
    text("リソースの色",pointX,pointY);
    pointY+=space1;
    text("リソースの数",pointX,pointY);
    pointY+=space1;
    text("最大容量",pointX,pointY);
    pointY+=space1;
    text("可視化できる最大容量",pointX,pointY);
    pointY=returnPointY;
  }
}
