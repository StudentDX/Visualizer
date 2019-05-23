BubbleSort v;
int[] data;

void setup() {
  size(500, 500);
  background(0);
  data = new int[100];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  v = new BubbleSort(data);
  v.display();
}

void draw(){
  v.bubbleSort();
}