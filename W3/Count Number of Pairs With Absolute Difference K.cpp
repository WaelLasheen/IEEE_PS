class Solution {
public:
    int countKDifference(vector<int>& nums, int k) {
        map<int,int>fr;
        int c=0;
        for(int i:nums)
          fr[i]++;
        for(int i:nums){
          if(fr.find(i-k) != fr.end()){
            c += fr[i-k];
          }
        }
        return c;
    }
};