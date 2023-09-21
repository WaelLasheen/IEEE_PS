class Solution {
public:
    int maxNumberOfBalloons(string text) {
        map<char,int>fr;
        for(char i:text)
            fr[i]++;
        return min({fr['b'],fr['a'],fr['n'], fr['l']/2 , fr['o']/2 });
    }
};
