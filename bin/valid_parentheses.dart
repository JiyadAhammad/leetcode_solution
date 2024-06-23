void main() {
  /*
Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false
  */
  String s = "(){}}{";
  final result = validParentheses(s);
  print(result);
}

bool validParentheses(String s) {
  List<String> stack = [];
  s.split('');
  for (var i = 0; i < s.length; i++) {
    if (s.contains('(') || s.contains('[') || s.contains('{')) {
      stack.add(s);
    } else {
      if ((stack[i] == s[i])) {
        stack.removeLast();
      }
    }
  }
  return stack.isEmpty;
}
