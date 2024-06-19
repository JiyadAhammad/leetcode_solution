void main() {
  int numRows = 5;
// Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

  final result = pascalTriangle(numRows);
  print(result);
}

List<List<int>> pascalTriangle(int numRows) {
  List<List<int>> result = [];

  for (int i = 0; i < numRows; i++) {
    List<int> row = [];
    for (int j = 0; j <= i; j++) {
      if (i == j || j == 0) {
        // print('*');
        row.add(1);
      } else {
        // print('#');
        row.add(result[i - 1][j - 1] + result[i - 1][j]);
      }

      // print(result[i][j]);
    }
    result.add(row);
  }
  return result;
}
