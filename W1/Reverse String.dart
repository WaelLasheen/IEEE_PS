class Solution {
  void reverseString(List<String> s) {
    int p1 = 0, p2 = s.length - 1;
    while (p1 < s.length / 2) {
      String temp = s[p1];
      s[p1] = s[p2];
      s[p2] = temp;
      p1++;
      p2--;
    }
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  List<String> s = ["h", "e", "l", "l", "o"];
  print(s.join(''));
  Solution rev = Solution();
  rev.reverseString(s);
  print(s.join(''));
}
