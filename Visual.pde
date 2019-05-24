class Visual {
  int[]data;
  int tick;

  public Visual(int[] dat) {
    data = dat;
    tick = 0;
  }

  void display() {
    for (int x = 0; x < data.length; x++) {
      display(x, 255, 255, 255);
    }
  }

  void display(int index, int red, int green, int blue) {
    fill(0);
    rect(index * (width/data.length), 0, width/data.length, 500);
    fill(red, green, blue);
    rect(index * (width/data.length), 250, width/data.length, -data[index]);
  }

  void tick() {
    tick++;
  }
}