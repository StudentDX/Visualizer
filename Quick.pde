class QuickSort extends Sorts{
  MyLinkedList ends = new MyLinkedList(); //stores high and low indices  
  int fStart,fEnd, pivot;
  
  QuickSort (int[] data) {
    super(data);
    ends.addStart(0);
    ends.addEnd(data.length);
    fStart = 0;
    fEnd = data.length - 1;
  }
  
  void partition() {
    if(fStart <= fEnd) {
      if(pivot()){
        if(data[fStart] > data[fEnd]) {
          swap(fEnd, fStart);
          select(fStart,fEnd);
          fEnd--;
        }
        else {
          select(fStart + 1, fStart);
          fStart++;
        }
      }
    }
  }
  
  // creates a pivot if there is none
  // returns true always
  boolean pivot(){ 
    //find pivot
    if (pivot == -1){ //makes pivot
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
      swap(fP[0],fStart);
      fStart++;
    }
    return true;
  }

  void mySort() {
    partition();
  }
}
