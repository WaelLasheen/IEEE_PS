class Solution {
public:
    int lengthOfLastWord(string s) {
        int sc=0,l=0;        // speace counter and letter counter
        for(int i=s.size()-1 ; i>=0;i--){
            if(l !=0 && sc !=0 )
                return l;
            else if(s[i] ==' ')
                sc++;
            else if(s[i] !=' '){
                l++;
                sc=0;
            }
        }
        return l;
    }
};
