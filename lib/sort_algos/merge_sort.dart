main() {
  List<int> array = [5, 1, 4, 2, 8,10,15,33,24,12,13,6];
  List<int> sortedArray = mergeSort(array,0,array.length-1);
  print(sortedArray);
}

List<int> mergeSort(List<int> values, int left, int right) {
  if (left >= right) {
    return values;
  } else {
    int middle = (left + right) ~/ 2;

    mergeSort(values, left, middle);
    mergeSort(values, middle + 1, right);

    merge(values, left, middle, right);
  }

  return values;
}

void merge(List<int> values, int left, int middle, int right) {
  final tempArray = List.generate(values.length, (index) => values[index]);

  int i = left;
  int j = middle + 1;
  int k = left;

  while (i <= middle && j <= right) {
    if (tempArray[i] <= tempArray[j]) {
      values[k] = tempArray[i];
      i++;
    } else {
      values[k] = tempArray[j];
      j++;
    }
    k++;
  }

  while (i <= middle) {
    values[k] = tempArray[i];
    i++;
    k++;
  }

  while (j <= right) {
    values[k] = tempArray[j];
    j++;
    k++;
  }
}
