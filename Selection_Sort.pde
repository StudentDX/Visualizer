class SelectionSort extends Sorts {
  int end;
  boolean done = false;
  int keeper;
  int wherenow = 1;

  SelectionSort(int[] data) {
    super(data);
    int index = 0;
    end = data.length - 1;
  }

  void mySort() {
    if (index < end) {
      if (wherenow <= end) {
        swap(index, keeper);
        index++;
        keeper = index + 1;
        wherenow = index + 1;
      }
      select(wherenow, keeper);
      if (data[wherenow]<data[keeper]) {
        keeper = wherenow;
        wherenow++;
      }
    }

      if (index == end) {//end case
        display(0, 0, 255, 0);
        done = true;
        return;
      }
    }
  }
}
