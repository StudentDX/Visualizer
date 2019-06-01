class QuickSort extends Sorts {
  MyLinkedList ends = new MyLinkedList(); //stores high and low indices  
  int fStart, fEnd, pivot;

  QuickSort (int[] data) {
    super(data);
    ends.addStart(0);
    ends.addEnd(data.length - 1);
    fStart = 0;
    fEnd = data.length - 1;
  }

  void partition() {
    if (pivot < 0) findPivot(); 
    select(fStart, index); // removes green after swapping
    if (data[fStart] > data[ends.readStart()]) { // swap to end
      swap(fEnd, fStart);
      index = fEnd;
      fEnd--;
    } 
    else { // step up
      select(fStart, fStart);
      index = fStart;
      fStart++;
    }
  }

  void stepDown() {
    // reset pivot
    select(fStart - 1, fStart); //removes the red
    swap(fStart - 1, ends.readStart());
    pivot = -1;
    // change high and low
  }

  // precondition: pivot = -1
  // creates a pivot
  void findPivot() { 
    int[] fP = {fStart, fEnd}; // stores potential pivots' indices, fP = findingPivot
    if (data[fP[0]] > data[fP[1]]) { // 
      int toSwap = fP[0];
      fP[0] = fP[1];
      fP[1] = toSwap;
    }
    if (data[(fStart + fEnd) / 2] > data[fP[0]] || data[(fStart + fEnd) / 2] < data[fP[1]]) {
      fP[0] = (fStart + fEnd) / 2;
    }
    pivot = fP[0]; //sets pivot
    //swap pivot with start
    swap(fP[0], fStart);
    fStart++;
  }

  void mySort() {
    if (fStart <= fEnd) {
      partition();
    } 
    else if (pivot != - 1) stepDown();
  }
}
