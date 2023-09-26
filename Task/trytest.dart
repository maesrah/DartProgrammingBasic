void main() {
  List<int> array1 = [1, 2, 3];
  List<int> array2 = [4, 5, 6];

  // Exchange the elements at a specific index (e.g., index 1)
  int indexToExchange = 1;

  if (indexToExchange >= 0 &&
      indexToExchange < array1.length &&
      indexToExchange < array2.length) {
    // Create a temporary variable to hold the element from array1
    int temp = array1[indexToExchange];

    // Assign the element from array2 to array1
    array1[indexToExchange] = array2[indexToExchange];

    // Assign the element from the temporary variable to array2
    array2[indexToExchange] = temp;

    // Print the arrays to see the result
    print('Array 1 after exchange: $array1');
    print('Array 2 after exchange: $array2');
  } else {
    print('Invalid index for exchange');
  }
}
