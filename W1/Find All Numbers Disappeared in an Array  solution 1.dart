class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> num = nums.toSet();
    Set<int> allNum = {};
    for (int i = 1; i <= nums.length; i++) {
      allNum.add(i);
    }
    List<int> out = allNum.difference(num).toList();
    return out;
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
