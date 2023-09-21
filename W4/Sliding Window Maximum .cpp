class Solution {
public:
    vector<int> maxSlidingWindow(vector<int>& nums, int k) {
        vector<int> out;
        deque<int> dq;

        for (int i = 0; i < nums.size(); i++) {
            // Remove elements that are out of the current window
            if (!dq.empty() && dq.front() < i - k + 1) {
                dq.pop_front();
            }

            // Remove elements that are less than the current element
            while (!dq.empty() && nums[dq.back()] < nums[i]) {
                dq.pop_back();
            }

            // Add the current element to the deque
            dq.push_back(i);

            // Add the maximum element of the current window to the result
            if (i >= k - 1) {
                out.push_back(nums[dq.front()]);
            }
        }

        return out;
    }
};
