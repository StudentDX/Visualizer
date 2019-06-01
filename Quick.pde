class QuickSort extends Sorts{
  MyLinkedList ends = new MyLinkedList(); //stores high and low indices  
  
  QuickSort (int[] data) {
    super(data);
    ends.addStart(0);
    ends.addEnd(data.length);
  }
  
}