class Visualize{
  int[]data;
  int examine, swap, tick;
  
  public Visualize(int[] dat, int exam, int swap){
  }
  
  void display(){
    for(int x = 0; x < data.length; x++){
      display(x, 255, 255, 255);
    }
  }
  
  void display(int index, int red, int green, int blue){
    fill(0);
    rect(index * (100/data.length), 0, 100/data.length, 500);
    fill(red, green, blue);
    rect(index * (100/data.length), 250, 100/data.length, -data[index]);
  }
}

void setup(){
  size(1500,500);
  background(0);
  int[] data = new int[750];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250,250);
  }
  
}
  
void draw(){
  if (tick > 50){
    test.swap(3,2);
    tick = 0;
  }
  tick++;
}