class Solution {
public:
    bool checkSubarraySum(vector<int>& nums, int k) {
        ios_base::sync_with_stdio(false); cin.tie(0); cout.tie(0);  // increase speed
        unordered_map<int,int>mod; 
        // map<int,int>mod;
        int sum=0;
        for(int i=0;i<nums.size();i++){
            sum += nums[i];
            sum %=k;
            mod[0]=-1;
            if(mod.find(sum) != mod.end()){
                if(i-mod[sum] >1)
                    return true;
            }
            else
                mod[sum]=i;
        }
        return false;
    }
};