Sorts v;
int[] data;

void setup() {
  size(1500, 500);
  background(0);
  //frameRate(10);
  //frameRate(30);
  data = new int[750];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  v = new QuickSort(data);

  v.display();
}

void draw(){
  v.mySort();
}
