import 'dart:collection';

class RecentCounter {

  final Queue q =Queue<int>();
  RecentCounter() {

  }
  
  int ping(int t) {
    q.add(t);
    while(q.first<t-3000)
      q.removeFirst();
    return q.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */