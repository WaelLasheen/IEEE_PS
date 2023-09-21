class Solution {
  int lengthOfLastWord(String s) {
    int p = s.length - 1, c = 0; // pointer start from the end & counter
    bool k =
        false; // key off : this mean i will egnor space untill i find a letter
    while (p >= 0) {
      if (s[p] != ' ') {
        k = true;
        c++;
      } else if (k) {
        return c;
      }
      p--;
    }
    return c;
    // this will solve it and you do not need tha above code
    //second solution :  
    //return s.trim().split(' ').last.length;
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  String s = "Hello World", l = '-' * 10;
  Solution len = Solution();
  print('Input : ${s}');
  print('Output : ${len.lengthOfLastWord(s)}');
  print(l);
  s = "   fly me   to   the moon  ";
  print('Input : ${s}');
  print('Output : ${len.lengthOfLastWord(s)}');
  print(l);
  s = "luffy is still joyboy";
  print('Input : ${s}');
  print('Output : ${len.lengthOfLastWord(s)}');
  print(l);
}
