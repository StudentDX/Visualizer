class InsertionSort extends Sorts {
  int left;
  int checking; //number being moved
  boolean shifting; //moving the numbers right

  InsertionSort(int[] data) {
    super(data);
    index = 1;
    left = 0;
    shifting = false;
  }

  void mySort() {
    if (index < data.length) {
      // iterating
      if (!shifting) {
        if (data[index] >= data[index - 1]) {
          select(index, index - 1);
          index++;
        } 
        else { //not int order, shifting right
          shifting = true;
          checking = data[index];
          left = index - 1;
          swap(left, index);
        }
      }
      //shifting 
      else {
        if (left > 0 && data[left - 1] > checking) {
          swap(left - 1, left);
          left--;
        } 
        else {
          shifting = false;
          select(index, left);
        }
      }
    }
    else display(index - 1, 255, 255, 255);
  }
}
