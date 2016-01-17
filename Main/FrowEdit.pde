//実線矢印と点線矢印のクラスはどちらもこのタブ内に書いています

//実線矢印の設定欄のクラス
class FlowEdit extends PoolEdit {
  JPanel panel = new JPanel();
  BoxLayout layout = new BoxLayout(panel, BoxLayout.Y_AXIS);
  JTextField text1;
  FlowEdit() {

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
    panel.add(new JLabel("半角英数字のみ有効"));
    text1 = new JTextField();
    panel.add(text1);
  }

  //設定画面の描写
  //ここ結構重要なとこ
  void Visual() {
    cp5Indivisual();
    textSize(23);
    fill(0);
    text("矢印", pointX, pointY);
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
    //最小値
    text("最小値", pointX, pointY);
    MinValue.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //最大値
    text("最大値", pointX, pointY);
    MaxValue.setPosition(pointX+240, pointY-20);

    pointY=returnPointY;
  }
}


//------------点線矢印の設定欄-----------------

class StateEdit extends PoolEdit {
  JPanel panel = new JPanel();
  BoxLayout layout = new BoxLayout(panel, BoxLayout.Y_AXIS);
  JTextField text1;
  StateEdit() {

    //関数に定数を与える
    pointX=730;
    returnPointX=730;
    pointY=400;
    returnPointY=400;
    space1=40;
    space2=50;



    //フォント設定
    font = createFont("MS Gothic", 48, true);
    textFont(font);

    //テキスト欄設定
    panel.setLayout(layout);
    panel.add(new JLabel("半角英数字のみ有効"));
    text1 = new JTextField();
    panel.add(text1);
  }

  //設定画面の描写
  //ここ結構重要なとこ
  void Visual() {
    cp5Indivisual();
    textSize(23);
    fill(0);
    text("点線の矢印", pointX, pointY);
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
    //最小値
    text("最小値", pointX, pointY);
    MinValue.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //最大値
    text("最大値", pointX, pointY);
    MaxValue.setPosition(pointX+240, pointY-20);
    pointY=returnPointY;
  }
}