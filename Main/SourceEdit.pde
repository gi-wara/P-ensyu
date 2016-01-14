//白いスペース内のプールを選択したときの設定欄の描写クラス
class SourceEdit extends PoolEdit {
  JPanel panel = new JPanel();
  BoxLayout layout = new BoxLayout(panel, BoxLayout.Y_AXIS);
  JTextField text1;

  SourceEdit() {

    //関数に定数を与える
    pointX=730;
    returnPointX=730;
    pointY=400;
    returnPointY=400;
    space1=40;
    space2=50;
    buttonPushFlag=2;


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
    text("ソース", pointX, pointY);
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
    text("発動タイミング", pointX, pointY);
    //ボタンの描写
    buttonVisual(pointX+240, pointY-20);
    pointY+=space1;
    //リソース不足（pull mode）
    text("リソース不足のとき", pointX, pointY);
    PullMode.setPosition(pointX+240, pointY-20);
    pointY+=space1;
    text("リソースの色", pointX, pointY);
    ResourceColor.setPosition(pointX+240, pointY-20);
    pointY=returnPointY;
  }
}