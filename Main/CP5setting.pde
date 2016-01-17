//controlP5を作動させる関数と
//入力内容を作業スペースに反映させる関数が書いてあるタブです
//難しいことはほぼここで行ってます


import javax.swing.*;

//controlP5の初期化
//ここから先はcontrolP5っていうGUI(?)をめっちゃ使ってます
ControlP5 cp5;
ScrollableList ColorChoose;
ScrollableList ResourceColor;
Numberbox Thickness;
Numberbox StartValue;
ScrollableList PullMode;
Numberbox MaxCapacity;
Numberbox VisibleValue;
Numberbox MinValue;
Numberbox MaxValue;
Numberbox Interval;
ScrollableList Distribution;
Numberbox ScaleX;
Numberbox ScaleY;


//controlP5を作動させる関数
//setupなど画面が切り替わる一瞬のみ出力させるようにしないとバグります
//最大容量と最大値は500まで選べるようにしておきました。
//深い意味はないですが、数値を選べるようにしておかないといけないみたいだったのでご了承ください
//あとnumberboxの名前が空欄で読みにくいのは、そうしないと表示がおかしくなる(?)からです。
//こちらもご了承ください

void CP5setting() {
  ControlP5 cp5;
  cp5=new ControlP5(this);
  //リスト置き場
  List ColorChooseList=Arrays.asList("Black", "Red", "Brue", "Yellow", "Green");
  List ResourceColorList=Arrays.asList("Black ", "Red ", "Brue ", "Yellow ", "Green ");
  List PullModeList=Arrays.asList("pull any", "pull all", "push any", "push all");
  List DistributionList=Arrays.asList("fixed speed", "instaneous");
  ;
  //
  //Y軸の目盛り（名前は半角空欄8つ）
  ScaleY=cp5.addNumberbox("        ")
    .setSize(100, 25)
    .setRange(0, 300)
    .setPosition(1150, 0)
    .setMultiplier(10)
    .setDirection(Controller.HORIZONTAL)
    .setValue(0)
    ;
  //X軸の目盛り（名前は半角空欄7つ）
  ScaleX=cp5.addNumberbox("        ")
    .setSize(100, 25)
    .setRange(0, 300)
    .setPosition(1150, 0)
    .setMultiplier(10)
    .setDirection(Controller.HORIZONTAL)
    .setValue(0)
    ;
  //可視化できる最大容量の設定（名前は半角空欄6つ）
  VisibleValue=cp5.addNumberbox("      ")
    .setSize(100, 25)
    .setRange(0, 25)
    .setPosition(1150, 0)
    .setMultiplier(5)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //最大値の設定（名前は半角空欄5つ）
  MaxValue=cp5.addNumberbox("     ")
    .setSize(100, 25)
    .setRange(1, 500)
    .setPosition(1150, 0)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //最小値の設定(名前は半角空欄4つ)
  MinValue=cp5.addNumberbox("    ")
    .setSize(100, 25)
    .setRange(0, 50)
    .setPosition(1150, 0)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //最大容量の設定（名前は半角空欄3つ）
  MaxCapacity=cp5.addNumberbox("   ")
    .setSize(100, 25)
    .setRange(-1, 500)
    .setPosition(1150, 0)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //リソースの初期値の設定（名前は半角空欄2つ）
  StartValue=cp5.addNumberbox("  ")
    .setSize(100, 25)
    .setRange(0, 100)
    .setPosition(1150, 0)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //リソースの色の設定
  ResourceColor=cp5.addScrollableList("black")
    .setPosition(1150, 0)
    .setSize(100, 25)
    .setBarHeight(25)
    .setItemHeight(20) 
    .addItems(ResourceColorList)
    .setBarHeight(25)
    .setBarVisible(true)
    .close()
    ;
  //pullmode（リソース不足のとき）の設定
  PullMode=cp5.addScrollableList("pull any")
    .setPosition(1150, 0)
    .setSize(100, 200)
    .setBarHeight(25) 
    .setItemHeight(20)
    .addItems(PullModeList)
    .setBarHeight(25) 
    .close()
    ;
  //厚さ設定（名前は半角空欄1つ)
  Thickness=cp5.addNumberbox(" ")
    .setSize(100, 25)
    .setRange(1, 15)
    .setPosition(1150, 0)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //色の設定
  ColorChoose=cp5.addScrollableList("Black")
    .setPosition(1150, 0)
    .setSize(100, 200)
    .setBarHeight(25)
    .setItemHeight(20) 
    .addItems(ColorChooseList)
    .setBarHeight(25)
    .close()
    ;
  //リソースの流れ方(Distribution)
  Distribution=cp5.addScrollableList("Fixed speed")
    .setPosition(1150, 0)
    .setSize(100, 200)
    .setBarHeight(25)
    .setItemHeight(20) 
    .addItems(DistributionList)
    .setBarHeight(25)
    .close()
    ;
  //間隔の設定(interval)(名前表記は半角空欄7個）
  Interval=cp5.addNumberbox("       ")
    .setSize(100, 25)
    .setRange(1, 30)
    .setPosition(1150, 0)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
}

//切り替わるときに消えるようにする
void cp5Indivisual() {
  ColorChoose.setPosition(1150,0);
  ResourceColor.setPosition(1150,0);
  Thickness.setPosition(1150,0);
  StartValue.setPosition(1150,0);
  PullMode.setPosition(1150,0);
  MaxCapacity.setPosition(1150,0);
  VisibleValue.setPosition(1150,0);
  MinValue.setPosition(1150,0);
  MaxValue.setPosition(1150,0);
  Interval.setPosition(1150,0);
  Distribution.setPosition(1150,0);
  ScaleX.setPosition(1150,0);
  ScaleY.setPosition(1150,0);
}
  

  //-----ここからは入力内容を作業スペースに反映させる関数です-------

  //プルダウンリスト内のアイテムを押したときの出力結果
  color ColorChoose() {
    //オブジェクトの色変更
    if (ColorChoose.getName()=="Black") {
      return color(0, 0, 0);
    }
    if (ColorChoose.getName()=="Red") {
      return color(255, 0, 0);
    }
    if (ColorChoose.getName()=="Blue") {
      return color(0, 0, 255);
    }
    if (ColorChoose.getName()=="Yellow") {
      return color(255, 255, 0);
    }
    if (ColorChoose.getName()=="Green") {
      return color(0, 255, 0);
    }
    return color(0);
  }
  //リソース不足のとき（pull mode）の変更
  //返り値はどうしとくのが最適かわからないのでintにしました
  int  PullMode() {
    //pull modeの変更
    if (PullMode.getName()=="pull any") {
      return 0;
    }
    if (PullMode.getName()=="pull all") {
      return 1;
    }
    if (PullMode.getName()=="push any") {
      return 2;
    }
    if (PullMode.getName()=="push all") {
      return 3;
    }
    return 0;
  }

  //リソースの色の変更
  color ResourceColor() {
    //リソースの色変更
    if (ResourceColor.getName()=="Black"&&ResourceColor.getName()=="Black") {
      return color(0);
    }
    if (ResourceColor.getName()=="Red") {
      return color(255, 0, 0);
    }
    if (ResourceColor.getName()=="Blue") {
      return color(0, 0, 255);
    }
    if (ResourceColor.getName()=="Yellow") {
      return color(255, 255, 0);
    }
    if (ResourceColor.getName()=="Green") {
      return color(0, 255, 0);
    }
    return 0;
  }

  //淵の厚さの変更
  void Thickness() {
    strokeWeight(int(Thickness.getValue()));
  }

  //