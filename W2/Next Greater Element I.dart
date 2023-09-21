class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    List <int> out=[];
    nums1.forEach((n1) { 
      int i2 = nums2.indexOf(n1);    // num index in list 2
      bool k = true;
      for(int i=i2+1;i<nums2.length;i++){
        if(nums2[i2] < nums2[i]){
          out.add(nums2[i]);
          k = false;
          break;
        }
      }
      if(k) out.add(-1);
    });
    return out;
  }
}

void main(List<String> args) {
  Solution s1=Solution();
  List<int> nums1=[4,1,2] , nums2=[1,3,4,2];
  print(s1.nextGreaterElement(nums1, nums2));

  print('-'*20);

  nums1=[2,4];
  nums2 =[1,2,3,4];
  print(s1.nextGreaterElement(nums1, nums2));
}