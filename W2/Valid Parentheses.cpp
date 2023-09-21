class Solution {
public:
    bool isValid(string s) {
        stack<char>a;
        for(char i:s){
            if(i=='(' || i=='{' || i=='[')
            a.push(i);
            else{
                if(a.empty()) return false;
                if(i==')' && a.top()=='(' || i==']' && a.top()=='[' || i=='}' && a.top()=='{')
                a.pop();
                else
                return false;
            }
        }
        return a.empty();
    }
};