class Solution {
public:
    int firstMissingPositive(vector<int>& nums) {
        set<int>p;
        for(int i:nums){
            if(i>0){
                p.insert(i);
            }
        }
        int n=1;
        for(int i:p){
            if(n !=i){
                return n;
            }
            n++;
        }
        return n;
    }
};