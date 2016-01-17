//人工プレイヤー(ArtificialPlayer)の描写
class ArtificialPlayerEdit extends PoolEdit{
 //ラベルの文章
  String LabelText="";

  int buttonPushFlag=3;
  ArtificialPlayerEdit() {

    //関数に定数を与える
    pointX=740;
    returnPointX=740;
    pointY=330;
    returnPointY=330;
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
  //ここ結構重要なとこ
  void Visual() {
    textSize(23);
    fill(0);
    text("人工プレイヤー", pointX, pointY);
    pointY+=space1;
    textSize(20);
    //色
    text("色", pointX, pointY);
    ColorChoose.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //厚さ
    text("厚さ", pointX, pointY);
    Thickness.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //ラベル
    text("ラベル", pointX, pointY);
    fill(255);
    strokeWeight(2);
    rect(pointX+240, pointY-20, 100, 25);
    fill(0);
    strokeWeight(1);
    textSize(15);
    text(LabelText, pointX+245, pointY);
    textSize(20);
    pointY+=space1;
    //発動タイミング（Acivation）
    text("発動タイミング", pointX, pointY);
    buttonVisual(pointX+240, pointY-20);
    pointY+=space1;
    //スクリプト(script)
    //時間がなくてここに記入することはできません
    text("スクリプト",pointX,pointY);
    fill(255);
    strokeWeight(2);
    rect(pointX+240,pointY-20,100,100);
    fill(0);
    strokeWeight(1);
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
    }
  }

  //ボタンのビジュアルを決める関数
  void buttonVisual(int pX, int pY) {
    //ボタンの大きさ
    int BoxWidth=20;
    int BoxHeight=23;
    //ボタンを押したときに
    //ちょっと押し込まれた感じの描写をつくるのに使います
    int gap=0;
    strokeWeight(3);

    //ボタン1個目
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
    textSize(20);
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