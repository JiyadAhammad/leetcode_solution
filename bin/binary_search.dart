void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];
  int target = 9;

  int min = 0;
  int max = nums.length - 1;
  while (min <= max) {
    int mid = (min + max) ~/ 2;
    if (target == nums[mid]) {
      print('$mid found');
    } else if (target < nums[mid]) {
      max = mid - 1;
    } else {
      min = mid + 1;
    }
  }
  print('${-1} NOt found');
}
