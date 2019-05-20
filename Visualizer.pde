int[]data;
int examine, swap, tick;

void setup(){
  size(1000,500);
  background(0);
  data = new int[(int)random(1000) + 1];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250,250);
  }
}

/*
void draw(int index, (int red, int green, int blue)) {
  
}
*/