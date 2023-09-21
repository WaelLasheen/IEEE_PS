class MyStack {
public:
    vector<int>s;
    MyStack() {
        
    }
    
    void push(int x) {
      s.push_back(x);
    }
    
    int pop() {
        int last=s[s.size()-1];
        s.pop_back();
        return last;
    }
    
    int top() {
        return s[s.size()-1];
    }
    
    bool empty() {
        return s.empty();
    }
};

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack* obj = new MyStack();
 * obj->push(x);
 * int param_2 = obj->pop();
 * int param_3 = obj->top();
 * bool param_4 = obj->empty();
 */