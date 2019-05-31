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
    if (index == end) {//end case
        done = true;
        return;
      }
    if (index < end) {
      if (wherenow == end) {
        swap(lowest, index);
        index++;
        lowest = index + 1;
        wherenow = index + 1;
        if (index > end - 2) { 
          if (data[index] > data[index +1]){
            swap(index, index + 1);
          }
        }
      }
      if (data[wherenow] < data[lowest]) {
        select(index, lowest);
        lowest = wherenow;
      }
      wherenow++;
    }
    }
  }
