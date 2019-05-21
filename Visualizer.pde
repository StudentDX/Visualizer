int[] list;
int x;
int end;
boolean done = false;
 
void setup() {
  size(400, 400);
  background(255);
  list = new int[20];
  for (int i=0; i < list.length; i++) {
    list[i] = Math.round(random(20));
  }
}
 
void draw() {
  if (done) { 
    return;
  }
  background(255);
  if (x>=end) {
    x=0;
    end--;
  }
  if (list[x]>list[x+1]) {
    int temp = list[x];
    list[x] = list[x+1]; //swap
    list[x+1] = temp;
  }
  x++;
  for (int i = 0; i<list.length; i++) {
    fill(196);
    if (i==x) { 
      fill(255, 0, 0);
    }
    if (i>end) { 
      fill(0, 255, 0);
    }
    rect(i*20, height-(20*list[i]), 18, (20*list[i]) );
  }
  if (end == -1) {
    done = true;
  }
}