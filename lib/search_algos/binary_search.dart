main() {
  List<int> array = [5, 1, 4, 2, 8,10,15,33,24,12,13,6];
  array.sort();
  print(binarySearch(array, 0, array.length-1, 10));
}


int binarySearch(L,left,right,x){
  if(left>right){
    return -1;
  }
  int mid=(left+right)~/2;
  if(L[mid]==x){
    return mid;
  }
  if(L[mid]<x){
    return binarySearch(L,mid+1,right,x);
  }
  else{
    return binarySearch(L,left,mid-1,x);
  }
}