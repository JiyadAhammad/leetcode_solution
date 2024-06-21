void main() {
  List<int> prices = [7, 6, 4, 3, 1];
// Output: 5
// Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
// Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

  final result = maxProfile(prices);
  print(result);
}

int maxProfile(List<int> prices) {
  int maximumProfit = 0;
  int buy = prices[0];

  for (var i = 1; i < prices.length; i++) {
    if (buy > prices[i]) {
      buy = prices[i];
    } else if (prices[i] - buy > maximumProfit) {
      maximumProfit = prices[i] - buy;
    }
  }

  return maximumProfit;
}
