class QuickSort extends Sorts{
  int hi, lo;  
  
  QuickSort (int[] data) {
    super(data);
    lo = 0;
    hi = data.length - 1;
  }
  
  QuickSort (int[] data, int lon, int hin) {
    super(data);
    lo = lon;
    hi = hin;
  }
}