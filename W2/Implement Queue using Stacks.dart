class MyQueue {

  List<int> q=[];
  MyQueue() {

  }
  
  void push(int x) {
    q.add(x);
  }
  
  int pop() {
    int first=q.first;
    q.removeAt(0);
    return first;
  }
  
  int peek() {
    return q.first;
  }
  
  bool empty() {
    return q.isEmpty;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */