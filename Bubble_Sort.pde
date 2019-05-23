class BubbleSort extends Sorts {
  int end;

  BubbleSort(int[] data) {
    super(data);
    end = data.length - 1;
  }

  void bubbleSort() {
    if (tick > 9) {
      tick = 0;
      if (end == -1) {//end case
        return;
      }
      if (index>=end) {
        index=0;
        end--;
      }
      if (data[index]>data[index+1]) {// swap
        swap(index, index + 1);
      } else select(index, index - 1); //highlights red
      index++;
    }
    tick();
  }
}