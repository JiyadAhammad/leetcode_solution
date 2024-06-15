void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  Map<int, int> targetMap = <int, int>{};

  for (var i = 0; i < nums.length; i++) {
    int result = target - nums[i];

    if (targetMap.containsKey(result)) {
      print([
        targetMap[result],
        i,
      ]);
    }
    targetMap[nums[i]] = i;
  }

  print(targetMap);
}
