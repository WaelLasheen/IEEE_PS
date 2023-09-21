class Solution {
  bool isAnagram(String s, String t) {
    List<String> l1 = s.split(''), l2 = t.split('');
    l1.sort();
    l2.sort();
    s = l1.join('');
    t = l2.join('');
    return s == t;
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
