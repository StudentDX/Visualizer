class SelectionSort extends Sorts {
  int end;
  boolean done = false;

  SelectionSort(int[] data) {
    super(data);
    end = data.length - 1;
  }

  void mySort() {
    if (!done) {
      int keeper = 0;
      tick = 0;
      if (index>=end) {
        swap(0, keeper);
        display(keeper, 0, 255, 0);
        index=0;
        end--;
      }
      if (end == -1) {//end case
        display(0, 0, 255, 0);
        done = true;
        return;
      }
      display(index, 255, 0, 0);
      display(keeper, 255,0,0);
      if (data[index]<data[keeper]) {
        keeper = index;
      }
      index++;
    }
  }
}