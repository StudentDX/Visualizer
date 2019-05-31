class SelectionSort extends Sorts {
  int end;
  boolean done = false;
  int lowest = 0;
  int wherenow = 1;

  SelectionSort(int[] data) {
    super(data);
    int index = 0;
    end = data.length;
  }

  void mySort() {
    if (index < end - 1) {
      if (data[wherenow] < data[lowest]) {
        display(index, 255,0,0);
        select(wherenow, lowest);
        lowest = wherenow;
      }
 
      wherenow++;
      if (wherenow >= end) {
        swap(lowest, index);
        display(index, 0,255,0);
        index++;
        lowest = index;
        wherenow = index + 1;
      }
    }
    display(index, 0, 255, 0);
    }
  }
