Sorts v;
int[] data;

void setup() {
  size(1500, 500);
  background(0);
  //frameRate(10);
  data = new int[100];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  v = new InsertionSort(data);
  v.display();
}

void draw(){
  v.mySort();
}
