Sorts v;
int[] data;

void setup() {
  size(1400, 500);
  background(0);
  //frameRate(10);
  data = new int[80];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  v = new SelectionSort(data);
  v.display();
}

void draw(){
  v.mySort();
}
