class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int>& nums) {
        sort(nums.begin(),nums.end());
        vector<int>num; // missing number
        int i=0,c=1;    // pointer and current number
        while(i<nums.size()){
            if(c==nums[i]){
                c++;
                i++;
            }
            else if(c>nums[i]){
                i++;
            }
            else if(c<nums[i]){
                num.push_back(c);
                c++;
            }
        }
        while(c <=nums.size()){
            num.push_back(c);
            c++;
        }
        return num;
    }
};
