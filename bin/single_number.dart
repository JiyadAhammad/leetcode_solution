void main() {
  List<int> a = [4, 1, 2, 1, 2];

  /**{
   2 : 2
   1 : 1
  }**/

  Map<int, int> countValue = <int, int>{};

  for (var i = 0; i < a.length; i++) {
    if (countValue.containsKey(a[i])) {
      countValue[a[i]] = countValue[a[i]]! + 1;
    } else {
      countValue[a[i]] = 1;
    }
  }

  for (var e in countValue.entries) {
    if (e.value == 1) {
      print(e.key);
    }
  }
  print(countValue);
}
