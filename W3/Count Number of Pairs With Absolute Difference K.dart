class Solution {
  int countKDifference(List<int> nums, int k) {
    int c=0;
    for(int i=0;i<nums.length;i++){
      for(int j=i+1;j<nums.length;j++){
        if(nums[i]-nums[j] == k || nums[i]-nums[j] == -k)
          c++;
      }
    }
    return c;
  }
}