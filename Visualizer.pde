Sorts v;

void setup() {
  size(1500, 500);
  background(0);
  int[] data = new int[70];
  for (int x = 0; x < data.length; x++) {
    data[x] = (int)random(-250, 250);
  }
  Sorts v = new Sorts(data);
  v.display();
}

void draw() {
  v.display();
}