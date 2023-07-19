void main() {
  List<int> array = [5, 1, 4, 2, 8,10,15,33,24,12,13,6];
  List<int> sortedArray = bubbleSort(array);
  print(sortedArray);
}

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;

      }
    }
  }
  return (array);
}