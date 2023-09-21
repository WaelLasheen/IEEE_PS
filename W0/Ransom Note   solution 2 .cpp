class Solution {
public:
    bool canConstruct(string r, string m) {
       int p1=0,p2=0;   // two pointer each one at first element in every string
       sort(r.begin(),r.end());
       sort(m.begin(),m.end());
       while(p1<r.size() && p2<m.size()){
           if(r[p1] == m[p2]){
               p1++;
            }
           p2++;
       }
       return (p1 == r.size());
    }
};
