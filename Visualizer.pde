Sorts v;
int mode; //determine the GUI
int[] data;
long timeWhenClick;
String[][] names = {
  {"Bubble Sort", "Insertion Sort", "Selection Sort", "Quick Sort"}, 
  {"Merge Sort", "Heap Sort", "Radix Sort"}
};

void setup() {
  size(1050, 280);
  timeWhenClick = System.currentTimeMillis();
  mode = 0;
  background(0);
  for (int y = 0; y < 2; y++) {
    for (int x = 0; x < 4; x++) {
      if (y < names.length && x < names[y].length) {
        int xcorn = x * 250 + 10 * (x + 1);
        int ycorn = y * 125 + 10 * (y + 1);
        if (y == 0) fill(40, 200, 40);
        else fill(255);
        rect(xcorn, ycorn, 250, 125);
        fill(0);
        textAlign(CENTER);
        text(names[y][x], xcorn + 125, ycorn + 125/2);
      }
    }
  }
}

void draw() {
  if (mode == -1) setup();
  if (mode == 1) mousePressed();
  if (mode == 3) v.mySort();
}

void mousePressed() {
  if (mode == 0) {// start GUI
    if (mouseY > 10 && mouseY < 135) { 
      if (mouseX > 10 && mouseX < 260) {//BubbleSort
        data = new int[75];
        for (int x = 0; x < data.length; x++) {
          data[x] = (int)random(-250, 250);
        }
        v = new BubbleSort(data);
      }
      if (mouseX > 270 && mouseX < 520) {//InsertionSort
        data = new int[75];
        for (int x = 0; x < data.length; x++) {
          data[x] = (int)random(-250, 250);
        }
        v = new InsertionSort(data);
      }
      if (mouseX > 530 && mouseX < 780) {//SelectionSort
        data = new int[75];
        for (int x = 0; x < data.length; x++) {
          data[x] = (int)random(-250, 250);
        }
        v = new SelectionSort(data);
      }
      if (mouseX > 790 && mouseX < 1040) { // QuickSort
        data = new int[250];
        for (int x = 0; x < data.length; x++) {
          data[x] = (int)random(-250, 250);
        }
        v = new QuickSort(data);
      }
    }
    if (v == null) return;
    resize();
  }
  else if (mode == 1) { //sort setup 
    setupSort();
    mode = 2;
    v.display();
  } else if (mode == 2) { //sort paused
    if (mouseX > 720 && mouseX < 780 && mouseY > 520 && mouseY < 580) { // unpause button
      mode = 3;
    }
    else if (mouseX > 200 && mouseX < 260 && mouseY > 515 && mouseY < 585) {//restart
      v.scramble();
    }
    else if (mouseX > 1240 && mouseX < 1300 && mouseY > 515 && mouseY < 585) {//restart go to menu
      surface.setSize(1050, 280);
      mode = -1;
    }
  } else { // sort unpaused
    if (mouseX > 720 && mouseX < 780 && mouseY > 520 && mouseY < 580) { // unpause button
      mode = 2;
    }
    else if (mouseX > 200 && mouseX < 260 && mouseY > 515 && mouseY < 585) {//restart
      v.scramble();
    }
    else if (mouseX > 1240 && mouseX < 1300 && mouseY > 515 && mouseY < 585) {//go to menu
      surface.setSize(1050, 280);
      mode = -1;
    }
  }
}

void setupSort() {
  //draws bottom bar
  fill(170);
  rect(0, 500, 1500, 100);
  //draws pause/start button
  fill(220, 0, 0);
  ellipse(750, 550, 80, 80);
  //draw restart/reset button
  fill(220,0,0);
  rect(200,515,60,70);
  //draw menu button 
  rect(1240,515,60,16);
  rect(1240,542,60,16);
  rect(1240,569,60,16);
}

void resize() {
  surface.setSize(1500, 600);
  mode++;
}
