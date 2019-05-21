int[]data;
int examine, swap, tick;

void setup(){
  size(100,500);
  background(0);
  data = new int[5];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250,250);
  }
  tick = 0;
  swap = 0;
  examine = 0;
  display();
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


  
void draw(){
  if (tick > 50){
    swap(3,2);
    tick = 0;
  }
  tick++;
}