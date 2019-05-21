static class Sorts extends Visualizer{
  int index;
  
  //num2 will be the final location of the bar
  //use accordingly
  void swap(int num1, int num2){
    int toSwap = data[num1];
    data[num1] = data[num2];
    data[num2] = toSwap;
    select(num2, num1);
  }
  
  //num1 will be displayed as red
  //num2 will be displayed as white
  void select(int num1, int num2){
    display(num1, 255, 0, 0);
    display(num2, 255, 255, 255);
  }
}