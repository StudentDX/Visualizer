class Selection_Sort extends Sorts {
  int end;
  boolean done = false;

  SelectionSort(int[] data) {
    super(data);
    end = data.length - 1;
  }

  void mySort() {
    if (!done) {
      int keeper;
      tick = 0;
      if (index>=end) {
        display(index, 0, 255, 0);
        index=0;
        end--;
      }
      if (end == -1) {//end case
        display(0, 0, 255, 0);
        done = true;
        return;
      }
      display(index, 255,0,0);
      keeper = index;
      
      if (data[index]>data[index+1]) {// swap
        display(
      }
      prev = index;
      index++;
    }
  }
}
