void main() {
  List<int> nums = [0, 0, 1];

  // [0,1,0]
  // [1,0,0]
  // temp =1; 2
  //
  //

  //outPut = [1,3,12,0,0]

  int j = 0;
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      int temp = nums[i];
      nums[i] = nums[j];
      nums[j] = temp;
      j++;
    }
  }

  print(nums);
}
