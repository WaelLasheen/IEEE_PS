class Solution {
public:
    int subarraySum(vector<int>& nums, int k) {
        map<int,int>prefix_sum;
        int sum=0, c=0;
        for(int i:nums){
            sum +=i;
            if(sum==k)
                c++;
            if(prefix_sum.find(sum-k) !=prefix_sum.end())
                c +=prefix_sum[sum-k];
            prefix_sum[sum]++;
        }
        return c;
    }
};