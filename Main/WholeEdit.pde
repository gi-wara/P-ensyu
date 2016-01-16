//全体の設定欄の描写のクラス

class WholeEdit extends PoolEdit {
  JPanel panel = new JPanel();
  BoxLayout layout = new BoxLayout(panel, BoxLayout.Y_AXIS);
  JTextField text1;

  //上からファイル名と作成者とダイスのテキスト
  String FileName="";
  String AuthorName="";
  String DiseValue="D6";
  WholeEdit() {

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
    text1 = new JTextField();
    panel.add(text1);
  }

  //設定画面の描写
  //ここ結構重要なとこ
  void Visual() {
    textSize(23);
    fill(0);
    text("全体の設定", pointX, pointY);
    pointY+=space1;
    textSize(20);
    //名前(Name)
    text("名前", pointX, pointY);
    fill(255);
    strokeWeight(2);
    rect(pointX+240, pointY-20, 100, 25);
    fill(0);
    strokeWeight(1);
    textSize(15);
    text(FileName, pointX+245, pointY);
    textSize(20);
    pointY+=space1;
    //作成者(Author)
    text("作成者", pointX, pointY);
    fill(255);
    strokeWeight(2);
    rect(pointX+240, pointY-20, 100, 25);
    fill(0);
    strokeWeight(1);
    textSize(15);
    text(AuthorName, pointX+245, pointY);
    textSize(20);
    pointY+=space1;
    //流れる間隔(interval)
    text("流れる間隔", pointX, pointY);
    Interval.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //リソースの流れ方(Distribution)
    text("リソースの流れ方", pointX, pointY);
    Distribution.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    //ダイスの値(Dice)
    text("ダイスの値", pointX, pointY);
    fill(255);
    strokeWeight(2);
    rect(pointX+240, pointY-20, 100, 25);
    fill(0);
    strokeWeight(1);
    textSize(15);
    text(DiseValue, pointX+245, pointY);
    textSize(20);
    pointY=returnPointY;
  }

  //ラベル内をクリックしたとき入力フォームが出てくる
  void textForm() {
    //名前の記入フォームを押したとき
    if (mouseX>pointX+240&&mouseX<pointX+240+100&&
      mouseY>pointY+space1-20&&mouseY<pointY+space1-20+25) {
      panel.add(new JLabel("入力"));
      int r = JOptionPane.showConfirmDialog(
        null, 
        panel, 
        "名前", 
        JOptionPane.OK_CANCEL_OPTION, 
        JOptionPane.QUESTION_MESSAGE);  

      FileName=text1.getText();
    }
    //作成者の記入フォームを押したとき
    if (mouseX>pointX+240&&mouseX<pointX+240+100&&
      mouseY>pointY+space1*2-20&&mouseY<pointY+space1*2-20+25) {
      panel.add(new JLabel("入力"));
      int r = JOptionPane.showConfirmDialog(
        null, 
        panel, 
        "作成者名", 
        JOptionPane.OK_CANCEL_OPTION, 
        JOptionPane.QUESTION_MESSAGE);  

      AuthorName=text1.getText();
    }
    if (mouseX>pointX+240&&mouseX<pointX+240+100&&
      mouseY>pointY+space1*5-20&&mouseY<pointY+space1*5-20+25) {
      panel.add(new JLabel("半角英数字のみ有効"));
      int r = JOptionPane.showConfirmDialog(
        null, 
        panel, 
        "ダイス", 
        JOptionPane.OK_CANCEL_OPTION, 
        JOptionPane.QUESTION_MESSAGE);  

      AuthorName=text1.getText();
    }
  }

  //ボタンをクリックしたときのフラグ管理
  //ボタン描写の変化に使います
  void ButtonPushed(int mX, int mY) {
    //使わないので空欄
  }

  //ボタンのビジュアルを決める関数
  void buttonVisual(int pX, int pY) {
    //使わないので空欄
  }
}