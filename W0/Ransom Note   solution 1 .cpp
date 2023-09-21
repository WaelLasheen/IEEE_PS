class Solution {
public:
    bool canConstruct(string r, string m) {
       map<char,int> fr1;   // frequance of letter in r 
       map<char,int> fr2;   // frequance of letter in m
       for(char i:r){
           fr1[i]++; 
       }
       for(char i:m){
           fr2[i]++; 
       }
       for(char i:r){
           if(fr1[i] > fr2[i]){
               return false;
           }
       }
       return true;
    }
};
