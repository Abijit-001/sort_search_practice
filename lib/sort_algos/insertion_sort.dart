main() {
  List<int> array = [5, 1, 4, 2, 8,10,15,33,24,12,13,6];
  List<int> sortedArray = insertionSort(array);
  print(sortedArray);
}

List<int> insertionSort(List<int> list) {
  for (int j = 1; j < list.length; j++) {
    int key = list[j];
    int i = j - 1;
    while (i >= 0 && list[i] > key) {
      list[i + 1] = list[i];
      i = i - 1;
      list[i + 1] = key;
    }
  }
  return list;
}