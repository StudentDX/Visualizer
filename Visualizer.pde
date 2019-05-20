int[]data;
int examine, swap, tick;

void setup(){
  size(1000,500);
  background(0);
  data = new int[(int)random(1000)];
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
  rect(index * (1000/data.length), 200, 1000/data.length, -data[index]);
}