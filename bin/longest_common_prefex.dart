void main() {
// Example 1:
// Input: strs = ["flower","flow","flight"]
// Output: "fl"

// Example 2:
// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.

  List<String> strs = ["flower", "flow", "flight"];

  final result = longestCommonPrefix(strs);

  print(result);
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) {
    return '';
  }
  String commonPrefix = strs.first;

  for (final word in strs) {
    while (!word.startsWith(commonPrefix)) {
      commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
    }
  }
  return commonPrefix;
}
