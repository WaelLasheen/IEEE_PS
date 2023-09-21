class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int>& nums) {
        vector<int>mn;
        map<int,int>fr;
        for(int i:nums){
            fr[i]++;
        }
        for(int i=1;i<=nums.size();i++){
            if(fr[i]==0)
                mn.push_back(i);
        }
        return mn;

    }
};