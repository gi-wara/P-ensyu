//終了条件(EndCondition）の描写のクラス

class EndConditionEdit extends PoolEdit {
  JPanel panel = new JPanel();
  BoxLayout layout = new BoxLayout(panel, BoxLayout.Y_AXIS);
  JTextField text1;
  EndConditionEdit() {

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
    cp5.setPosition(1150,0);
    textSize(23);
    fill(0);
    text("終了条件", pointX, pointY);
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
    //ボタンの描写
    buttonVisual(pointX+240, pointY-20);
    pointY+=space1;
    //リソース不足（pull mode）
    text("リソース不足のとき", pointX, pointY);
    PullMode.setPosition(pointX+240, pointY-20);
    pointY=returnPointY;
  }
}