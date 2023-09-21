class Solution {
public:
    bool isSubsequence(string s, string t) {
        int k=0,i;
        if(s.size()==0) 
        return true;
        for(i=0;i<t.size();i++){
            if(s[k]==t[i])
            k++;
            if(k==s.size())
            return true;
        }
        return false;
    }
};