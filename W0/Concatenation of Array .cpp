class Solution {
public:
    vector<int> getConcatenation(vector<int>& nums) {
        vector<int> ans;
        int t=0;
        a:for(int i=0;i<nums.size();i++)
            ans.push_back(nums[i]);
        t++;
        if(t!=2)
            goto a;
        return ans;
    }
};
