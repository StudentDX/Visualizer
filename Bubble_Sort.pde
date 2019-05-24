class BubbleSort extends Sorts {
  int end;
  boolean done = false;

  BubbleSort(int[] data) {
    super(data);
    end = data.length - 1;
  }

  void sort() {
    if (!done) {
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
      select(index, prev); //highlights red
      if (data[index]>data[index+1]) {// swap
        swap(index, index + 1);
      }
      prev = index;
      index++;
    }
  }
}