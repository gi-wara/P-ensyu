//こっちはクラスのテスト画面です
Establish establish;
void setup(){
  establish=new Establish();
  size(800,800);
}
int button=2;
void draw(){
  background(255);
  //右上のボタンを押してなかったときは全体の設定画面を映す
  switch(button){
    case 0:
    establish.WholeEstablish();
    break;
    case 1:
    establish.Pool();
    break;
    case 2:
    establish.Gate();
    break;
    case 3:
    break;
    case 4:
    break;
    
  }
}