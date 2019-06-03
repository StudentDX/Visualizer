Sorts v;
int[] data;
String[][] names = {
{"Bubble Sort", "Insertion Sort", "Selection Sort", "Quick Sort"},
{"Merge Sort", "Heap Sort", "Radix Sort"}
};
void setup() {
  size(1050, 280);
  background(0);
  
  for (int y = 0; y < 2; y++) {
    for (int x = 0; x < 4; x++) {
      if (y < names.length && x < names[y].length) {
        int xcorn = x * 250 + 10 * (x + 1);
        int ycorn = y * 125 + 10 * (y + 1);
        if (y == 0) fill(40,200,40);
        else fill(255);
        rect(xcorn, ycorn, 250, 125);
        fill(0);
        textAlign(CENTER);
        text(names[y][x], xcorn + 125, ycorn + 125/2);
      }
    }
  }
  
}

void draw(){
  
}
