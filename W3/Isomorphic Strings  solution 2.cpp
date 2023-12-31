class Solution {
public:
    bool isIsomorphic(string s, string t) {
        map<char,char>m1;
        map<char,char>m2;
        for(int i=0;i<s.length();i++){
            char m=s[i],n=t[i];
            if(m1[m] && m1[m]!=n || m2[n] && m2[n]!=m)
                return false;
            m1[m]=n;
            m2[n]=m;
        }
        return true;
    }
};