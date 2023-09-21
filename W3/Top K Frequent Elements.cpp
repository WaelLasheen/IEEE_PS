class Solution {
public:

    static bool cmp(pair<int, int>& a, pair<int, int>& b) {
        return (a.second == b.second? a.first < b.first : a.second > b.second);
    }

    vector<int> topKFrequent(vector<int>& nums, int k) {
        map<int,int>fr;
        for(int i:nums){
            fr[i]++;
        }
        vector<pair<int,int>>pr;
        for(auto i:fr){
            pr.push_back(i);
        }
        sort(pr.begin(),pr.end(),cmp);
        vector<int>out;
        for(int i=0;i<k;i++){
            out.push_back(pr[i].first);
        }
        return out;
    }
};