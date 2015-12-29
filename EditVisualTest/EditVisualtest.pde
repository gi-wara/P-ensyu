//こっちはクラスのテスト画面です
EditVisual editVisual;
void setup(){
  editVisual=new EditVisual();
  size(800,800);
}
//tの数値を変えるとそれに合わせて個々の設定画面に飛ぶ
int button=3;
void draw(){
  background(255);
  switch(button){
    case 0:
    editVisual.WholeEdit();
    break;
    case 1:
    editVisual.Textlabel();
    break;
    case 2:
    editVisual.GroupBox();
    break;
    case 3:
    editVisual.Pool();
    break;
    case 4:
    editVisual.Gate();
    break;
    case 5:
    editVisual.Flow();
    break;
    case 6:
    editVisual.State();
    break;
    case 7:
    editVisual.Source();
    break;
    case 8:
    editVisual.Drain();
    break;
    case 9:
    editVisual.endcondition();
    break;
  }
}