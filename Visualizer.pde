Sorts v;
int[] data;

void setup() {
  size(1500, 500);
  background(0);
  data = new int[25];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  v = new SelectionSort(data);
  v.display();
}

void draw(){
  v.mySort();
}
