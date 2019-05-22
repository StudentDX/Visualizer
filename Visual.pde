class Visual {
  int[]data;
  int examine, swap, tick;

  public Visual(int[] dat) {
    data = dat; 
    examine = 0;
    swap = 0;
    tick = 0;
  }

  void display() {
    for (int x = 0; x < data.length; x++) {
      display(x, 255, 255, 255);
    }
  }

  void display(int index, int red, int green, int blue) {
    fill(0);
    rect(index * (100/data.length), 0, 100/data.length, 500);
    fill(red, green, blue);
    rect(index * (100/data.length), 250, 100/data.length, -data[index]);
  }

  void tick() {
    tick++;
  }
}