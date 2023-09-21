class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    int p1 = 0, p2 = 0; // 2 pointer foe each string
    List<String> R = ransomNote.split('');
    List<String> M = magazine.split('');
    R.sort();
    M.sort();
    while (p1 < ransomNote.length && p2 < magazine.length) {
      if (R[p1] == M[p2]) {
        p1++;
      }
      p2++;
    }
    return p1 == ransomNote.length;
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  String ransomNote = "a", magazine = "b";
  String l = '-' * 10;
  Solution can = Solution();
  print('Input : ransomNote = "a", magazine = "b"');
  print('Output : ${can.canConstruct(ransomNote, magazine)}');
  print(l);
  ransomNote = "aa";
  magazine = "ab";
  print('Input : ransomNote = "aa", magazine = "ab"');
  print('Output : ${can.canConstruct(ransomNote, magazine)}');
  print(l);
  ransomNote = "aa";
  magazine = "aab";
  print('Input : ransomNote = "aa", magazine = "aab"');
  print('Output : ${can.canConstruct(ransomNote, magazine)}');
  print(l);
}
