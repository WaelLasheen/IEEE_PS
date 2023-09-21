class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        map<int,int>fr;
        for(int i:nums)
            fr[i]++;
        for(auto i : fr){
            if(i.second>1)
                return true;
        }
        return false;
    }
};