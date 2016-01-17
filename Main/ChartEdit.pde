//図表（Chart）描写のクラス
class ChartEdit extends PoolEdit {
  ChartEdit() {

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
    cp5Indivisual();
    textSize(23);
    fill(0);
    text("図表", pointX, pointY);
    pointY+=space1;
    textSize(20);
    //色
    text("色", pointX, pointY);
    ColorChoose.setPosition(pointX+240, pointY-20);
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
    //X軸の目盛り(ScaleX)
    text("X軸の目盛り", pointX, pointY);
    ScaleX.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //Y軸の目盛り(ScaleY)
    text("Y軸の目盛り", pointX, pointY);
    ScaleY.setPosition(pointX+240, pointY-20);
    pointY=returnPointY;
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