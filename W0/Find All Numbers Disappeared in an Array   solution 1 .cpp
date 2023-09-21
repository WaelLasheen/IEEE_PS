class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int>& nums) {
        map<int,int>fr;
        for(int i:nums)
            fr[i]++;
        vector<int> num;
        for(int i=1;i<=nums.size();i++){
            if(fr[i] ==0){
                num.push_back(i);
            }
        }
        return num;
    }
};
