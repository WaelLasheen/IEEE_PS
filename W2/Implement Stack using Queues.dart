class MyStack {

  List<int> s=[];
  MyStack() {

  }
  
  void push(int x) {
    s.add(x);
  }
  
  int pop() {
    int last = s.last;
    s.removeLast();
    return last;
  }
  
  int top() {
    return s.last;
  }
  
  bool empty() {
    return s.length ==0;
  }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = MyStack();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.top();
 * bool param4 = obj.empty();
 */