class SelectionSort extends Sorts {
  int end; // end variable
  int lowest = 0; 
  int wherenow = 1;

  SelectionSort(int[] data) {
    super(data); //make array
    int index = 0; //index starting at 0
    end = data.length; //set end to the length of data
  }

  void mySort() {
    if (index < end - 1) { //if you have not reached the end
      if (data[wherenow] < data[lowest]) { //if your current position is less than ur lowest stored
        display(index, 255,0,0); //show current wherenow as red
        select(wherenow, lowest); 
        lowest = wherenow; //then set lowest to current position and store it 
      }
      wherenow++; //incremennt 
      if (wherenow >= end) { //if wherenow reaches the end
        swap(lowest, index); //swap with index
        display(index, 0,255,0); //display as green
        index++; //add to index
        lowest = index; //reset lowest
        wherenow = index + 1; //reset wherenow
      }
    }
    display(index, 0, 255, 0); //solution to make final bar display green
    }
  }
