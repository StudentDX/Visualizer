class BubbleSort extends Sorts {
  int end;
  boolean done = false;

  BubbleSort(int[] data) {
    super(data);
    end = data.length - 1;
  }

  void mySort() {
    if (!done) {
      if (index>=end) {
        display(index, 255, 255, 255);
        index=0;
        end--;
      }
      if (end == -1) {//end case
        display(index, 255, 255, 255);
        done = true;
        return;
      }
      select(index, prev); //highlights red
      if (data[index]>data[index+1]) {// swap
        swap(index + 1, index);
      }
      prev = index;
      index++;
    }
  }

  void scramble() {
    super.scramble();
    end = data.length - 1;
    done = false;
  }
}
