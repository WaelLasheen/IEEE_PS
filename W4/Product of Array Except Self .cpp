class Solution {
public:
    vector<int> productExceptSelf(vector<int>& nums) {
        long long pro=1;
        int z=0;
        vector<int>out(nums.size());
        for(int i:nums){
            if(i==0)
                z++;
            else{
                pro *=i;
            }
            
            if(z>1) return out;
        }
        for(int i=0;i<nums.size();i++){
            if(z==1){
                if (nums[i]==0)
                    out[i]=pro;
            } 
            else
                out[i] = pro/nums[i];
        }
        return out;
    }
};