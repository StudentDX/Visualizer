BubbleSort v;
int[] data;

void setup() {
  size(1500, 500);
  frameRate(5000);
  background(0);
  data = new int[500];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  v = new BubbleSort(data);
  v.display();
}

void draw(){
  v.sort();
}