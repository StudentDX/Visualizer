class QuickSort extends Sorts{
  MyLinkedList ends = new MyLinkedList(); //stores high and low indices  
  
  QuickSort (int[] data) {
    super(data);
    ends.add(0);
    ends.add(data.length - 1);
  }
  
}