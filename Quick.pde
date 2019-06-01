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
    if(fStart < fEnd) {
      
    }
  }
  
  boolean pivot(){
    //find pivot
    if (pivot == -1){ //makes pivot
      int[] fP = {fStart, fEnd}; // stores potential pivots' indices, fP = findingPivot
      if (data[fP[0]] > data[fP[1]]) swap(fP, 0, 1);
      if (data[(fStart + fEnd) / 2] > data[fP[0]] || data[(fStart + fEnd) / 2] < data[fP[1]]) {
        fP[0] = (fStart + fEnd) / 2;
      }
      pivot = fP[0];
      //swap pivot with start
      swap(fP[0],fStart);
      fStart++;
    }
    return true;
  }
  
  void swap(int[] ary, int idx1, int idx2){
    int toSwap = ary[idx1];
    ary[idx1] = ary[idx2];
    ary[idx2] = toSwap;  
  }

  void mySort() {
    partition();
  }
}
