class Solution {
  void sortColors(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          int temp = nums[j];
          nums[j] = nums[i];
          nums[i] = temp;
        }
      }
    }
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  List<int> nums = [2, 0, 2, 1, 1, 0];
  Solution s = Solution();
  print(nums);
  s.sortColors(nums);
  print(nums);
  print('-' * 10);
  nums = [2, 0, 1];
  print(nums);
  s.sortColors(nums);
  print(nums);
  print('-' * 10);
}
