class Solution {
public:
    vector<vector<string>> groupAnagrams(vector<string>& strs) {
        map<string,vector<string>>words;
        for(string i:strs){
            string word=i;
            sort(word.begin(),word.end());
            words[word].push_back(i);
        }
        vector<vector<string>>out;
        for(auto i:words){
            out.push_back(i.second);
        }
        return out;
    }
};