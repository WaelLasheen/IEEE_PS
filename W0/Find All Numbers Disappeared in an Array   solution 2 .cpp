class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int>& nums) {
        set<int>n;
        for(int i:nums)
            n.insert(i);
        vector<int> num;
        for(int i=1;i<=nums.size();i++){
            if(n.find(i)==n.end()){
                num.push_back(i);
            }
        }
        return num;
    }
};
