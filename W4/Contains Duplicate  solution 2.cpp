class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        map<int,int>fr;
        set<int>k;
        for(int i:nums){
            k.insert(i);
            fr[i]++;
        }
        for(int i:k){
            if(fr[i]>1)
                return true;
        }
        
        return false;
    }
};