class Solution {
public:
    int firstMissingPositive(vector<int>& nums) {
        sort(nums.begin(),nums.end());
        int n=1;
        for(int i:nums){
            if(i>0){
                if(i==n){
                    n++;
                }
            }
        }
        return n;
    }
};