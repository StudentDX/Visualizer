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
  
  boolean addStart(int value) {
    Node toAdd = new Node();
    toAdd.setData(value);
    if (this.size() == 0) { // an empty list calls its only node start and end
      end = toAdd;
      start = toAdd;
      current = start;
    }
    else {
      toAdd.setNext(start);
      start = toAdd;
    }
    size++;
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
  
  public int remove() {
    Node output = end;
    if (size() > 1) {
      end = end.prev();
      end.setNext(null);
      size--;  
    }
    else {
      clear();  
    }
    return output.getData();
  }
  
  int read(){
    return end.getData();
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
