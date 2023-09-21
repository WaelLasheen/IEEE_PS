class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    int p1 = 0, p2 = 0; // 2 pointer foe each string
    List<String> R = s.split('');
    List<String> M = t.split('');
    R.sort();
    M.sort();

    while (p1 < s.length && p2 < t.length) {
      if (R[p1] == M[p2]) {
        p1++;
      }
      p2++;
    }
    return p1 == s.length;
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  Solution anag = Solution();
  String s = "anagram", t = "nagaram";
  print('Input : s = "$s, t = $t');
  print('Output : ${anag.isAnagram(s, t)}');
  print('-' * 10);
  s = "rat";
  t = "car";
  print('Input : s = "$s, t = $t');
  print('Output : ${anag.isAnagram(s, t)}');
  print('-' * 10);
}
