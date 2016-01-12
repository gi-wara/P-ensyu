//作成者ぎーわら
//クラスの下に関数もおいてあるので注意
//白いスペース内のプールを選択したときの設定欄の描写クラス
class EditPool {
  //テキストの配置を決める関数置き場
  int pointX;
  int returnPointX;
  int pointY;
  int returnPointY;
  int space1;
  int space2;

  int buttonPushFlag=0;
  //フォントを設定しないとうまく動かないのよね
  PFont font;

  EditPool() {
    //関数に定数を与える
    pointX=30;
    returnPointX=30;
    pointY=30;
    returnPointY=30;
    space1=40;
    space2=50;

    //フォント設定
    font = createFont("MS Gothic", 48, true);
    textFont(font);
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
    //ボタンの描写
    buttonVisual(pointX+240, pointY-20);
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
  
  //ボタンをクリックしたとき
  //ここがうまく判定してくれなくておこ
  void ButtonPushed() {
    int BoxWidth=20;
    int BoxHeight=23;
    if (mouseX>pointX+240&&mouseX<pointX+240+BoxWidth&&
      mouseY>pointY-20&&mouseY<pointY-20+BoxHeight) {
      buttonPushFlag=1;
      println("buttonPushFlag="+buttonPushFlag);
    }else if (mouseX>pointX+240+27&&mouseX<pointX+240+BoxWidth+27&&
      mouseY>pointY-20&&mouseY<pointY-20+BoxHeight) {
      buttonPushFlag=2;
      println("buttonPushFlag="+buttonPushFlag);
    }else if (mouseX>pointX+240+54&&mouseX<pointX+240+BoxWidth+54&&
      mouseY>pointY-20&&mouseY<pointY-20+BoxHeight) {
      buttonPushFlag=3;
      println("buttonPushFlag="+buttonPushFlag);
    }else if (mouseX>pointX+240+81&&mouseX<pointX+240+BoxWidth+81&&
      mouseY>pointY-20&&mouseY<pointY-20+BoxHeight) {
      buttonPushFlag=4;
      println("buttonPushFlag="+buttonPushFlag);
    }else{
      println("Oh no!");
    }
  }
  
  //ボタンのビジュアルを決める関数
  void buttonVisual(int pX, int pY) {
    //ボタンの大きさ
    int BoxWidth=20;
    int BoxHeight=23;
    int gap=0;
    strokeWeight(3);
    if (buttonPushFlag==1) {
      fill(237, 234, 255);
      gap=2;
    } else if (mouseX>pX&&mouseX<pX+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    rect(pX, pY, BoxWidth, BoxHeight);
    line(pX, pY+BoxHeight+gap+2, pX+BoxWidth+1, pY+BoxHeight+2);
    line(pX+BoxWidth+2, pY, pX+BoxWidth+2, pY+BoxHeight+1);
    fill(255);
    ellipse(pX+gap+BoxWidth/2,pY+gap+BoxHeight/2,11,11);

    if (buttonPushFlag==2) {
      fill(237, 234, 255);
      gap=2;
    } else if (mouseX>pX+27&&mouseX<pX+27+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    rect(pX+27+gap, pY+gap, BoxWidth, BoxHeight);
    line(pX+27, pY+BoxHeight+2, pX+BoxWidth+27+1, pY+BoxHeight+2);
    line(pX+BoxWidth+27+2, pY, pX+BoxWidth+27+2, pY+BoxHeight+1);
    fill(255);
    strokeWeight(2);
    ellipse(pX+27+gap+BoxWidth/2,pY+gap+BoxHeight/2,12,12);
    ellipse(pX+27+gap+BoxWidth/2,pY+gap+BoxHeight/2,6,6);
    strokeWeight(3);
    
    if (buttonPushFlag==3) {
      fill(237, 234, 255);
      gap=2;
    } else if (mouseX>pX+54&&mouseX<pX+54+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    rect(pX+54+gap, pY+gap, BoxWidth, BoxHeight);
    line(pX+54, pY+BoxHeight+2, pX+BoxWidth+54+1, pY+BoxHeight+2);
    line(pX+BoxWidth+54+2, pY, pX+BoxWidth+54+2, pY+BoxHeight+1);
    int R;
    fill(0);
    pushMatrix();
    translate(pX+54+gap+BoxWidth/2, pY+gap+BoxHeight/2+1);
    rotate(radians(-90));
    beginShape();
    for (int i = 0; i < 10; i++) {
      if (i%2 == 0) {
        R = 6;
      } else {
        R = 3;
      }
      vertex(R*cos(radians(360*i/10)), R*sin(radians(360*i/10)));
    }
    endShape(CLOSE);
    popMatrix();
    strokeWeight(3);
    
    if (buttonPushFlag==4) {
      fill(237, 234, 255);
      gap=2;
    } else if (mouseX>pX+81&&mouseX<pX+81+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    rect(pX+81+gap, pY+gap, BoxWidth, BoxHeight);
    line(pX+81, pY+BoxHeight+2, pX+BoxWidth+81+1, pY+BoxHeight+2);
    line(pX+BoxWidth+81+2, pY, pX+BoxWidth+81+2, pY+BoxHeight+1);
    stroke(0);
    fill(0);
    textSize(23);
    text("s",pX+81+5, pY+gap+18);
    strokeWeight(1);
  }
}

//プルダウンリストを作る関数
//画面が切り替わる一瞬のみ出力させるようにしてください
void P5Pool(int pointX, int pointY, int space) {
  //controlP5の初期化
  ControlP5 ColorChoose=new ControlP5(this);
  ControlP5 PullMode=new ControlP5(this);
  ControlP5 ResourceColor=new ControlP5(this);
  ControlP5 Numberbox=new ControlP5(this);

  //リスト置き場
  //ResourceColorList内の語尾の空白はわざとです
  //ColorChooseListとの区別をするためにやっています
  List ColorChooseList=Arrays.asList("Black", "Red", "Brue", "Yellow", "Green");
  List PullModeList=Arrays.asList("pull any", "pull all", "push any", "push all");
  List ResourceColorList=Arrays.asList("Black ", "Red ", "Brue ", "Yellow ", "Green ");
  //色の設定
  ColorChoose.addScrollableList("Black")
    .setPosition(pointX+240, pointY+space-20)
    .setSize(100, 200)
    .setBarHeight(25)
    .setItemHeight(20)
    .addItems(ColorChooseList)
    .setBarHeight(25) 
    .close()
    ;
  //厚さ設定（名前は半角空欄1個）
  Numberbox.addNumberbox(" ")
    .setSize(100, 25)
    .setRange(0, 10)
    .setPosition(pointX+240, pointY+space*2-20)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(0)
    ;
  //pullmode（リソース不足のとき）の設定
  PullMode.addScrollableList("pull any")
    .setPosition(pointX+240, pointY+space*5-20)
    .setSize(100, 200)
    .setBarHeight(25) 
    .setItemHeight(20)
    .addItems(PullModeList)
    .setBarHeight(25) 
    .close()
    ;
  //リソースの色の設定
  ResourceColor.addScrollableList("Black")
    .setPosition(pointX+240, pointY+space*6-20)
    .setSize(100, 200)
    .setBarHeight(25)
    .setItemHeight(20) 
    .addItems(ResourceColorList)
    .setBarHeight(25) 
    .close()
    ;
  //ラベルの設定
  //リソースの数の設定
  //最大容量の設定
  //可視化できる最大容量の設定

  //自分用メモ
  //float s1 = cp5.getController("hello").getValue();
}

//プルダウンリスト内のアイテムを押したときの出力結果
//if文多くてごめんなさい。許して♡
void dropdown(String n) {
  if (click=="pool") {
    //オブジェクトの色変更
    if (n=="Black") {
      println(" (0,0,0)");
    }
    if (n=="Red") {
      println("(255, 0, 0)");
    }
    if (n=="Blue") {
      println("(0, 0, 255)");
    }
    if (n=="Yellow") {
      println("(255, 255, 0)");
    }
    if (n=="Green") {
      println("(0,255, 0)");
    }

    //pull modeの変更
    if (n=="pull any") {
    }
    if (n=="pull all") {
    }
    if (n=="push any") {
    }
    if (n=="push all") {
    }

    //リソースの色変更
    if (n=="Black ") {
      println(" (0,0,0)");
    }
    if (n=="Red ") {
      println("(255, 0, 0)");
    }
    if (n=="Blue ") {
      println("(0, 0, 255)");
    }
    if (n=="Yellow ") {
      println("(255, 255, 0)");
    }
    if (n=="Green ") {
      println("(0,255, 0)");
    }
  }
}

//この関数はつかわない
void NumberBox(int pointX, int pointY, int space) {
  ControlP5 Numberbox=new ControlP5(this);
  //厚さ設定（名前は半角空欄1個）
  Numberbox.addNumberbox(" ")
    .setSize(100, 20)
    .setRange(pointX, pointY+space*3-10)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(0)
    ;
}