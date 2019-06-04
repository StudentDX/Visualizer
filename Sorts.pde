class Sorts extends Visual {
  int index;
  int prev;

  Sorts(int[] data) {
    super(data);
    index = 0;
    prev = 0;
  }

  // num1 will be the final location of the bar
  // displayed as green
  //use accordingly
  void swap(int num1, int num2) {
    int toSwap = data[num2];
    data[num2] = data[num1];
    data[num1] = toSwap;
    display(num2, 255, 255, 255);
    display(num1, 0, 255, 0);
  }

  //num1 will be displayed as red
  //num2 will be displayed as white
  void select(int num1, int num2) {
    display(num2, 255, 255, 255);
    display(num1, 255, 0, 0);
  }

  void mySort() {
  }
}
