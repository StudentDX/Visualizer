class Sorts extends Visual {
  int index;

  Sorts(int[] data) {
    super(data);
  }

  //num2 will be the final location of the bar
  // displayed as red
  //use accordingly
  void swap(int num1, int num2) {
    int toSwap = data[num1];
    data[num1] = data[num2];
    data[num2] = toSwap;
    display(num2, 0, 255, 0);
    display(num1, 255, 255, 255);
  }

  //num1 will be displayed as red
  //num2 will be displayed as white
  void select(int num1, int num2) {
    display(num1, 255, 0, 0);
    display(num2, 255, 255, 255);
  }
}