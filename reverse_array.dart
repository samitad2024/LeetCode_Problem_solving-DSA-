// reversed array probelm 
void main() {
  
  List<int> arr1 = [1, 4, 3, 2];
  List<int> reversedArr1 = arr1.reversed.toList();
  print('Reversed Array (using reversed): ${reversedArr1.join(' ')}');

  List<int> arr2 = [1, 4, 3, 2];
  for (int i = 0; i < arr2.length ~/ 2; i++) {
    int temp = arr2[i];
    arr2[i] = arr2[arr2.length - 1 - i];
    arr2[arr2.length - 1 - i] = temp;
  }
  print('Reversed Array (in-place): ${arr2.join(' ')}');

  List<int> arr3 = [5, 6, 7, 8];

  String result = '';
  for (int i = arr3.length - 1; i >= 0; i--) {
    result += arr3[i].toString();
    if (i > 0) {
      result += ' ';
    }
  }
  print('Reversed Array (manual loop for output): $result');
}