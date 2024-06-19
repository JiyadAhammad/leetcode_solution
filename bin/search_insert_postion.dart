void main() {
  List<int> nums = [1, 3, 5, 6];
  int target = 2;

  int min = 0;
  int max = nums.length - 1;
  int mid = 0;

  while (min <= max) {
    mid = (min + max) ~/ 2;

    if (target == nums[mid]) {
      print('$mid found at mid');
    } else if (target > nums[mid]) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  print(min);
}
