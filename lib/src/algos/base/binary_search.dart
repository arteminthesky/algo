class BinarySearch {
  final List<num> numbers;

  BinarySearch(this.numbers);

  int indexOf(num searchedNumber) {
    var left = 0;
    var right = numbers.length;

    while (left < right) {
      var mid = (right - left) ~/ 2;
      var currentIndex = left + mid;
      var checkedNumber = numbers[currentIndex];

      if (checkedNumber == searchedNumber) {
        return currentIndex;
      } else {
        if (checkedNumber > searchedNumber) {
          right = mid;
        } else {
          left = mid;
        }
      }
    }

    return -1;
  }
}

extension BinarySearchX on List<num> {
  int binarySearchOf(num number) => BinarySearch(this).indexOf(number);
}
