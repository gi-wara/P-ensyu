//作成者ぎーわら
//クラスの下に関数もおいてあります
//白いスペース内のプールを選択したときの設定欄の描写クラス
class EditPool {
  //テキストの配置を決める関数置き場
  int pointX;
  int returnPointX;
  int pointY;
  int returnPointY;
  int space1;
  int space2;

  //フォントを設定しないとうまく動かないのよね
  PFont font;


  EditPool() {
    //関数に定数を与える
    pointX=50;
    returnPointX=50;
    pointY=40;
    returnPointY=40;
    space1=40;
    space2=50;

    //フォント設定
    font = createFont("MS Gothic", 48, true);
    textFont(font);
  }
  void test() {
    println("tent");
  }
  //設定画面の描写
  void Visual() {
    textSize(23);
    fill(0);
    text("プール", pointX, pointY);
    pointY+=space1;
    textSize(20);
    text("色", pointX, pointY);
    pointY+=space1;
    text("厚さ", pointX, pointY);
    pointY+=space1;
    text("ラベル", pointX, pointY);
    pointY+=space1;
    text("Activation", pointX, pointY);
    pointY+=space1;
    //↓pull mode
    text("リソース不足のとき", pointX, pointY);
    pointY+=space1;
    text("リソースの色", pointX, pointY);
    pointY+=space1;
    text("リソースの数", pointX, pointY);
    pointY+=space1;
    text("最大容量", pointX, pointY);
    pointY+=space1;
    text("可視化できる最大容量", pointX, pointY);
    pointY=returnPointY;
  }
}

//プルダウンリストを作る関数
//画面が切り替わる一瞬のみ出力させるようにしてください
void P5Pool(int pointX, int pointY, int space, String colorChoose) {
  //controlP5の初期化
  ControlP5 ColorChoose=new ControlP5(this);
  ControlP5 PullMode=new ControlP5(this);
  ControlP5 ResourceColor=new ControlP5(this);
  //リスト置き場
  List ColorChooseList=Arrays.asList("Black", "Red", "Brue", "Yellow", "Green");
  List PullModeList=Arrays.asList("pull any", "pull all", "push any", "push all");
  //プルダウンリストの作成
  ColorChoose.addScrollableList("Black")
    .setPosition(pointX+200, pointY+space-20)
      .setSize(100, 200)
        .setBarHeight(25)
          .setItemHeight(20)
            .addItems(ColorChooseList)
              .setBarHeight(25) 
                .close()
                  ;
  PullMode.addScrollableList("pull any")
    .setPosition(pointX+200, pointY+space*5-20)
      .setSize(100, 200)
        .setBarHeight(25) 
          .setItemHeight(20)
            .addItems(PullModeList)
              .setBarHeight(25) 
                .close()
                  ;
  ResourceColor.addScrollableList("Black")
    .setPosition(pointX+200, pointY+space*6-20)
      .setSize(100, 200)
        .setBarHeight(25)
          .setItemHeight(20) 
            .addItems(ColorChooseList)
              .setBarHeight(25) 
                .close()
                  ;
}

