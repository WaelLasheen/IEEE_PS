class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int>& nums) {
        sort(nums.begin(), nums.end());
        vector<int> missing_Numbers;
        int c = 1; // current number to check

        for (int num : nums) {
            while (c < num) {
                missing_Numbers.push_back(c);
                c++;
            }
            if (c == num) {
                c++;
            }
        }

        while (c <= nums.size()) {
            missing_Numbers.push_back(c);
            c++;
        }

        return missing_Numbers;
    }
};