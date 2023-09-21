class Solution {
public:
    bool isAnagram(string s, string t) {
        map<char,int>fr_s;
        map<char,int>fr_t;
        for(char i:s)
            fr_s[i]++;
        for(char i:t)
            fr_t[i]++;
        if(s.size() != t.size())
            return false;
        for(char i:s){
            if(fr_s[i] != fr_t[i])
                return false;
        }
        return true;
    } 
}; 
