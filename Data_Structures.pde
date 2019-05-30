class MyLinkedList{
  int size;
  private Node start, end, current;

  public MyLinkedList() {
    size = 0;
  }
  
  public int size(){
    return size;
  }
  
  public void clear(){
    size = 0;
    start = null;
    end = null;
    current = null;
  }
  
  public boolean add(int value) { //current default will be to add to end
    Node toAdd = new Node();
    toAdd.setData(value);
    if (this.size() == 0) { // an empty list calls its only node start and end
      end = toAdd;
      start = toAdd;
      current = start;
    }
    else {
      toAdd.setPrev(end);
      end = toAdd;
    }
    size++;
    return true;
  }
  
  boolean add(int value, int index) {
    Node toAdd= new Node();
    if (index == size()) add(value);
    else if(index == 0) { // add to start
      toAdd.setNext(start);
      start.setPrev(toAdd);
      start = toAdd;
    }
    return true;
  }
  
  public String toString() {
    Node location = start;
    String output = "[";
    if (this.size() < 1) return output + "]";
    while (location != null) {
      output += location + ", ";
      location = location.next();
    }
    return output.substring(0, output.length() - 2) + "]";
  }
  
  public int removeFront() {
    Node output = start;
    if (size() > 1) {
      start = start.next();
      start.setPrev(null);
    }
    else start = null;
    size--;
    return output.getData();
  }
  
  public int remove(int index){
    int output = 0;
    if (index == 0){
      output = removeFront();
    }
    else if (index == size() - 1) {
      output = end.getData();
      end = end.prev();
      end.setNext(null);
    }
    return output;
  }
  
  private Node getStart(){
    return start;
  }
  
  private Node getEnd(){
    return end;
  } 
  
  public void extend(MyLinkedList other){
    if (other.hasNext()) {
      if (size() < 1) {
        start = other.getStart();
        current = start;
      }
      else end.setNext(other.getStart());
      end = other.getEnd();
      size += other.size();
      other.clear();
    }
  }
  
  public boolean hasNext(){
    return (current != null);
  }
  
  public int next(){
    if (hasNext()){
      int preCurrent = current.getData();
      current = current.next();
      return preCurrent;
    }
    return -1;
  }
  
  /// Node section
  private class Node{
    private int data;
    private Node next, prev;
    
    public Node next() {
      return next;
    }

    public Node prev() {
      return prev;
    }

    public void setNext(Node other) {
      next = other;
      if (other != null && other.prev() != this) other.setPrev(this);
    }

    public void setPrev(Node other) {
      prev = other;
      if (other != null && other.next() != this) other.setNext(this);
    }

    public int getData() {
      return data;
    }

    public int setData(int i) {
      int old = data;
      data = i;
      return old;
    }

    public String toString() {
      return data + "";
    }
  }

}