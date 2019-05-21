int[]data;
int examine, swap, tick;

void setup(){
  size(1500,500);
  background(0);
  data = new int[750];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250,250);
  }
  draw();
}

void draw(){
  for(int x = 0; x < data.length; x++){
    draw(x, 255, 255, 255);
  }
}

void draw(int index, int red, int green, int blue){
  fill(red, green, blue);
  rect(index * (1500/data.length), 250, 1500/data.length, -data[index]);
}
