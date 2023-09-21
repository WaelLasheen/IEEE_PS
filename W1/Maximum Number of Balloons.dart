class Solution {
  int maxNumberOfBalloons(String text) {
    List<int> balloon = [0, 0, 0, 0, 0];
    for (int i = 0; i < text.length; i++) {
      if (text[i] == 'b')
        balloon[0]++;
      else if (text[i] == 'a')
        balloon[1]++;
      else if (text[i] == 'l')
        balloon[2]++;
      else if (text[i] == 'o')
        balloon[3]++;
      else if (text[i] == 'n') balloon[4]++;
    }
    balloon[2] = (balloon[2] ~/ 2); // half value of l
    balloon[3] = (balloon[3] ~/ 2); // half value of o
    int m = balloon[0];
    balloon.forEach((i) {
      if (m > i) m = i;
    });
    return m;
  }
}

void main(List<String> args) {
  // the code in main is entered by leet code.
  // this is just example
  Solution balloon = Solution();
  String text = "nlaebolko";
  print('Input : text = "${text}"');
  print('Output : ${balloon.maxNumberOfBalloons(text)}');
  print('-' * 10);
  text = "loonbalxballpoon";
  print('Input : text = "${text}"');
  print('Output : ${balloon.maxNumberOfBalloons(text)}');
  print('-' * 10);
  text = "leetcode";
  print('Input : text = "${text}"');
  print('Output : ${balloon.maxNumberOfBalloons(text)}');
  print('-' * 10);
}
