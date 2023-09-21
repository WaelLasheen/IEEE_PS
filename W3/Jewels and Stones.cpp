class Solution {
public:
    int numJewelsInStones(string jewels, string stones) {
        int c=0;
        map<char,int> fr;
        for(char i:stones)
          fr[i]++;
        for(char i:jewels)
          c += fr[i];
        
        return c;
    }
};