class Establish{
  /*
  設定画面のビジュアルが描写されるテスト版クラスです。
  本書きはまた別で組みます。
  文字の色、記号の名前など細かいところは
  他の人との兼ね合いで後々変える予定です。
  */
  
  //テキストの配置を決める関数置き場
  int pointX=50;
  int returnPointX=50;
  int pointY=40;
  int returnPointY=40;
  int space1=40;
  int space2=30;
  PFont font;
  Establish(){
    font = createFont("MS Gothic",48,true);
    textFont(font);
  }
  //設定欄の並びは元のマキネーションの順番を参考にしています
  //全体の設定
  void WholeEstablish(){
    //フォント設定をしないと文字化けしてしまったので、フォント設定してます
    textSize(23);
    fill(0);
    text("マキネーションダイアグラム",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("名前",pointX,pointY);
    pointY+=space1;
    text("製作者",pointX,pointY);
    pointY+=space1;
    text("リソースの流れ方",pointX,pointY);
    pointY+=space1;
    text("流れる間隔",pointX,pointY);
    pointY+=space1;
    text("分布",pointX,pointY);
    pointY+=space1;
    text("ダイス",pointX,pointY);
    pointY+=space1;
    text("幅",pointX,pointY);
    pointY+=space1;
    text("高さ",pointX,pointY);
    pointY=returnPointY;
  }
  
  //テキストラベル(Text Lavel)の設定
  void Textlabel(){
    textSize(23);
    fill(0);
    text("テキストラベル",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY=returnPointY;
  }
  
  //グループボックス(GroupBox)の設定
  void GroupBox(){
    textSize(23);
    fill(0);
    text("グループボックス",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY=returnPointY;
  }
  
  //プール(pool)の設定
  void Pool(){
    textSize(23);
    fill(0);
    text("プール",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("Activation",pointX,pointY);
    pointY+=space1;
    //↓pull mode
    text("リソース不足のとき",pointX,pointY);
    pointY+=space1;
    text("リソースの色",pointX,pointY);
    pointY+=space1;
    text("リソースの数",pointX,pointY);
    pointY+=space1;
    text("最大容量",pointX,pointY);
    pointY+=space1;
    text("可視化できる最大容量",pointX,pointY);
    pointY=returnPointY;
  }
  
  //ゲート(gate)の設定
  void Gate(){
    textSize(23);
    fill(0);
    text("ゲート",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("Activation",pointX,pointY);
    pointY+=space1;
    //↓pull mode
    text("リソース不足のとき",pointX,pointY);
    pointY+=space1;
    text("ダイスを使う",pointX,pointY);
    pointY=returnPointY;
  }
  
  //矢印(Resource connestion)の設定
  void Flow(){
    textSize(23);
    fill(0);
    text("矢印",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("最小値",pointX,pointY);
    pointY+=space1;
    text("最大値",pointX,pointY);
    pointY=returnPointY;
  }
  
  //点線矢印(State)の設定
  void State(){
    textSize(23);
    fill(0);
    text("矢印",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("最小値",pointX,pointY);
    pointY+=space1;
    text("最大値",pointX,pointY);
    pointY=returnPointY;
  }
  
  //ソース(Source)の設定
  void Source(){
    textSize(23);
    fill(0);
    text("ソース",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("Activation",pointX,pointY);
    pointY+=space1;
    //↓pull mode
    text("リソース不足のとき",pointX,pointY);
    pointY+=space1;
    text("リソースの色",pointX,pointY);
    pointY=returnPointY;
  }
  
  //ドレイン(Drain)の設定
  void Drain(){
    textSize(23);
    fill(0);
    text("ドレイン",pointX,pointY);
    pointY+=space1;
    textSize(20);
    text("色",pointX,pointY);
    pointY+=space1;
    text("厚さ",pointX,pointY);
    pointY+=space1;
    text("ラベル",pointX,pointY);
    pointY+=space1;
    text("Activation",pointX,pointY);
    pointY+=space1;
    //↓pull mode
    text("リソース不足のとき",pointX,pointY);
    pointY=returnPointY;
  }
}