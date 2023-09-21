import 'dart:math';

class Solution {
  int maxDepth(String s) {
    int open = 0, ans = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(')
        open++;
      else if (s[i] == ')') open--;
      ans = max(ans, open);
    }
    return ans;
  }
}
