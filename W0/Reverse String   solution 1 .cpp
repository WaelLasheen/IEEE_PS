class Solution {
public:
    void reverseString(vector<char>& s) {
    int i=0;            //first element
    int j=s.size()-1;   //last element
    while(i<s.size()/2){
        swap(s[i++],s[j--]);
    }
    }
};
