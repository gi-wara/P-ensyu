//作成者ぎーわら
//クラスの下に関数もおいてあるので注意
import javax.swing.*;
//白いスペース内のプールを選択したときの設定欄の描写クラス
class EditPool {
  JPanel panel = new JPanel();
  BoxLayout layout = new BoxLayout(panel, BoxLayout.Y_AXIS);
  JTextField text1;

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

  //ラベルの文章
  String LabelText="";
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

    //テキスト欄設定
    panel.setLayout(layout);
    panel.add(new JLabel("入力"));
    text1 = new JTextField();
    panel.add(text1);
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
    //ラベルの描写
    fill(255);
    strokeWeight(2);
    rect(pointX+240, pointY-20, 100, 25);
    fill(0);
    strokeWeight(1);
    pointY+=space1;
    text("Activation", pointX, pointY);
    //ボタンの描写
    buttonVisual(pointX+240, pointY-20);
    textSize(15);
    text(LabelText,pointX+240,pointY-40);
    pointY+=space1;
    textSize(20);
    //↓pull mode
    text("リソース不足のとき", pointX, pointY);
    pointY+=space1;
    text("リソースの色", pointX, pointY);
    pointY+=space1;
    text("リソースの初期値", pointX, pointY);
    pointY+=space1;
    text("最大容量", pointX, pointY);
    pointY+=space1;
    text("可視化できる最大容量", pointX, pointY);
    pointY=returnPointY;
  }

  //ボタンをクリックしたときのフラグ管理
  //ボタン描写の変化に使います
  void ButtonPushed(int mX, int mY) {
    int BoxWidth=20;
    int BoxHeight=23;
    int pX=pointX+240;
    int pY=pointY+40*4-20;
    if (mX>pX&&mX<pX+BoxWidth&&
      mY>pY&&mY<pY+BoxHeight) {
      buttonPushFlag=1;
      println("buttonPushFlag="+buttonPushFlag);
    } else if (mX>pX+27&&mX<pX+BoxWidth+27&&
      mY>pY&&mY<pY+BoxHeight) {
      buttonPushFlag=2;
      println("buttonPushFlag="+buttonPushFlag);
    } else if (mX>pX+54&&mX<pX+BoxWidth+54&&
      mY>pY&&mY<pY+BoxHeight) {
      buttonPushFlag=3;
      println("buttonPushFlag="+buttonPushFlag);
    } else if (mX>pX+81&&mX<pX+BoxWidth+81&&
      mY>pY&&mY<pY+BoxHeight) {
      buttonPushFlag=4;
      println("buttonPushFlag="+buttonPushFlag);
    } else {
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

    //ボタン1個目
    //ボタンの色などを決めます
    if (buttonPushFlag==1) {
      fill(237, 234, 255);
      gap=1;
    } else if (mouseX>pX&&mouseX<pX+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    //ボタンの描写
    rect(pX+gap, pY+gap, BoxWidth, BoxHeight);
    line(pX+gap*2, pY+BoxHeight+2, pX+BoxWidth+1, pY+BoxHeight+2);
    line(pX+BoxWidth+2, pY+gap*2, pX+BoxWidth+2, pY+BoxHeight+1);
    fill(255);
    ellipse(pX+gap+BoxWidth/2, pY+gap+BoxHeight/2, 11, 11);
    //ボタン2米
    if (buttonPushFlag==2) {
      fill(237, 234, 255);
      gap=1;
    } else if (mouseX>pX+27&&mouseX<pX+27+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    rect(pX+27+gap, pY+gap, BoxWidth, BoxHeight);
    line(pX+27+gap*2, pY+BoxHeight+2, pX+BoxWidth+27+1, pY+BoxHeight+2);
    line(pX+BoxWidth+27+2, pY+gap*2, pX+BoxWidth+27+2, pY+BoxHeight+1);
    fill(255);
    strokeWeight(2);
    ellipse(pX+27+gap+BoxWidth/2, pY+gap+BoxHeight/2, 12, 12);
    ellipse(pX+27+gap+BoxWidth/2, pY+gap+BoxHeight/2, 6, 6);
    strokeWeight(3);
    //3個目
    if (buttonPushFlag==3) {
      fill(237, 234, 255);
      gap=1;
    } else if (mouseX>pX+54&&mouseX<pX+54+BoxWidth&&
      mouseY>pY&&mouseY<pY+BoxHeight) {
      fill(237, 234, 255);
      gap=0;
    } else {
      fill(197, 193, 255);
      gap=0;
    }
    rect(pX+54+gap, pY+gap, BoxWidth, BoxHeight);
    line(pX+54+gap*2, pY+BoxHeight+2, pX+BoxWidth+54+1, pY+BoxHeight+2);
    line(pX+BoxWidth+54+2, pY+gap*2, pX+BoxWidth+54+2, pY+BoxHeight+1);
    //ボタン内の星の描写
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
    //4個目のボタン
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
    line(pX+81+gap*2, pY+BoxHeight+2, pX+BoxWidth+81+1, pY+BoxHeight+2);
    line(pX+BoxWidth+81+2, pY+gap*2, pX+BoxWidth+81+2, pY+BoxHeight+1);
    stroke(0);
    fill(0);
    textSize(23);
    text("s", pX+81+5+gap, pY+gap+18);
    strokeWeight(1);
  }

  //テキストを記入するフォームを出す
  void textForm() {
    if (mouseX>pointX+240&&mouseX<pointX+240+100&&
      mouseY>pointY+space1*3-20&&mouseY<pointY+space1*3-20+25) {
      int r = JOptionPane.showConfirmDialog(
        null, 
        panel, 
        "ラべル", 
        JOptionPane.OK_CANCEL_OPTION, 
        JOptionPane.QUESTION_MESSAGE);  

      println(r);
      LabelText=text1.getText();
    }
  }
}

//プルダウンリストを作る関数
//画面が切り替わる一瞬のみ出力させるようにしてください
void P5Pool(int pointX, int pointY, int space,boolean flag) {
  //controlP5の初期化
  ControlP5 cp5=new ControlP5(this);

  //リスト置き場
  //ResourceColorList内の語尾の空白はわざとです
  //ColorChooseListとの区別をするためにやっています
  List ColorChooseList=Arrays.asList("Black", "Red", "Brue", "Yellow", "Green");
  List PullModeList=Arrays.asList("pull any", "pull all", "push any", "push all");
  List ResourceColorList=Arrays.asList("Black ", "Red ", "Brue ", "Yellow ", "Green ");

  ScrollableList ColorChoose;
  ScrollableList ResourceColor;
  Numberbox Thickness;
  Numberbox StartValue;
  ScrollableList PullMode;
  Numberbox MaxValie;
  Numberbox VisibleValue;

  //可視化できる最大容量の設定（名前は半角空欄4つ）
  VisibleValue=cp5.addNumberbox("    ")
    .setSize(100, 25)
    .setRange(0, 30)
    .setPosition(pointX+240, pointY+space*9-20)
    .setMultiplier(5)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //最大容量の設定（名前は半角空欄3つ）
  MaxValie=cp5.addNumberbox("   ")
    .setSize(100, 25)
    .setRange(-1, 500)
    .setPosition(pointX+240, pointY+space*8-20)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //リソースの初期値の設定（名前は半角空欄2つ）
  StartValue=cp5.addNumberbox("  ")
    .setSize(100, 25)
    .setRange(0, 100)
    .setPosition(pointX+240, pointY+space*7-20)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;
  //リソースの色の設定
  ResourceColor=cp5.addScrollableList("Black ")
    .setPosition(pointX+240, pointY+space*6-20)
    .setSize(100, 200)
    .setBarHeight(25)
    .setItemHeight(20) 
    .addItems(ResourceColorList)
    .setBarHeight(25) 
    .close()
    ;
  //pullmode（リソース不足のとき）の設定
  PullMode=cp5.addScrollableList("pull any")
    .setPosition(pointX+240, pointY+space*5-20)
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
    .setRange(0, 10)
    .setPosition(pointX+240, pointY+space*2-20)
    .setMultiplier(1)
    .setDirection(Controller.HORIZONTAL)
    .setValue(1)
    ;

  //色の設定
  ColorChoose=cp5.addScrollableList("Black")
    .setPosition(pointX+240, pointY+space-20)
    .setSize(100, 200)
    .setBarHeight(25)
    .setItemHeight(20) 
    .addItems(ColorChooseList)
    .setBarHeight(25)
    .close()
    ;
    
  //ページが切り替わると消えるようにする
  if(flag==false){
    ColorChoose.remove();
    ResourceColor.remove();
    Thickness.remove();
    StartValue.remove();
    PullMode.setBarVisible(false);
    MaxValie.remove();
    VisibleValue.remove();
  }

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