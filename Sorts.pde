class Sorts{
  int index;
  
  //num2 will be the final location of the bar
  //use accordingly
  void swap(int num1, int num2){
    int toSwap = data[num1];
    data[num1] = data[num2];
    data[num2] = toSwap;
    draw(num2, 255,0,0);
  }
}