class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    List<int> missingNumbers = [];
    Set<int> seenNumbers = nums.toSet();

    for (int i = 1; i <= nums.length; i++) {
      if (!seenNumbers.contains(i)) {
        missingNumbers.add(i);
      }
    }

    return missingNumbers;
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  Solution find = Solution();
  List<int> nums = [4, 3, 2, 7, 8, 2, 3, 1];
  print('Input : ${nums}');
  print('Output : ${find.findDisappearedNumbers(nums)}');
  print('-' * 10);
  nums = [1, 1];
  print('Input : ${nums}');
  print('Output : ${find.findDisappearedNumbers(nums)}');
  print('-' * 10);
}
