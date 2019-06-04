class QuickSort extends Sorts {
  MyLinkedList lows = new MyLinkedList(); //stores low indices
  MyLinkedList highs = new MyLinkedList();
  int fStart, fEnd, pivot;

  QuickSort (int[] data) {
    super(data);
    lows.add(0);
    highs.add(data.length - 1);
    pivot = -1;
    fStart = 0;
    fEnd = highs.read();
  }

  void partition() {
    if (pivot == -1) findPivot(); 
    select(fStart, index);
    if (data[fStart] > data[lows.read()]) { // swap to end
      swap(fEnd, fStart);
      index = fEnd;
      fEnd--;
    } else { // step up
      index = fStart;
      fStart++;
    }
  }

  void stepDown() {
    if (fStart >= data.length || highs.size() < 1) return;
    // reset pivot
    while (data[fStart] >= data[lows.read()] && fStart > lows.read()) fStart--;
    pivot = fStart;
    swap(pivot, lows.read());
    display(pivot, 255, 255, 255);
    // change high and low

    if (highs.read() <= lows.read()) {
      lows.add(highs.remove() + 2);
    } else highs.add(pivot - 1);
    //reset fakes
    fStart = lows.read();
    fEnd = highs.read();
    pivot = -1;
  }

  // precondition: pivot = -1
  // creates a pivot
  void findPivot() { 
    int[] fP = {fStart, fEnd}; // stores potential pivots' indices, fP = findingPivot
    if (data[fP[0]] > data[fP[1]]) { // swap if left is smaller than right
      int toSwap = fP[0];
      fP[0] = fP[1];
      fP[1] = toSwap;
    }
    //set pivot
    if ((fStart + fEnd) / 2 < fP[0]) pivot = fP[0]; //value is to the left
    else if ((fStart + fEnd) / 2 > fP[1]) pivot = fP[1]; //value is to the right 
    else pivot = (fStart + fEnd) / 2; //if value is between the two, replace left with this
    //swap pivot with start
    swap(lows.read(), fP[0]);
    fStart++;
  }

  void mySort() {
    try {
      if (fStart < fEnd) partition();
      else stepDown();
    }
    catch (NullPointerException e) {
    }
  }
}
