void main() {
  List<int> nums = [6, 6, 6, 7, 7];

  Map<int, int> majorityMap = <int, int>{};

  for (var i = 0; i < nums.length; i++) {
    if (majorityMap.containsKey(nums[i])) {
      majorityMap[nums[i]] = majorityMap[nums[i]]! + 1;
    } else {
      majorityMap[nums[i]] = 1;
    }
  }

  print(majorityMap);
  int majorityElement = 0;
  int result = 0;
  majorityMap.forEach((key, value) {
    if (majorityElement < value) {
      majorityElement = value;
      result = key;
    }
  });
  print(result);
  // return result;
}
