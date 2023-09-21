class Solution {
  List<int> getConcatenation(List<int> nums) {
    return nums+nums;
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  Solution get = Solution();
  List<int> nums = [1, 2, 1];
  print('Input : ${nums}');
  print('Output : ${get.getConcatenation(nums)}');
  print('-' * 10);
  nums = [1, 3, 2, 1];
  print('Input : ${nums}');
  print('Output : ${get.getConcatenation(nums)}');
  print('-' * 10);
}
