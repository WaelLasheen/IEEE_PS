class Solution {
  int countStudents(List<int> students, List<int> sandwiches) {
    int stud0 = 0, stud1 = 0, san0 = 0, san1 = 0;
    students.forEach((i) {
      i == 0 ? stud0++ : stud1++;
    });
    sandwiches.forEach((i) {
      i == 0 ? san0++ : san1++;
    });
    for (int i = 0; i < sandwiches.length; i++) {
      sandwiches[i] == 0 ? stud0-- : stud1--;
      if (stud0 < 0) return stud1;
      if (stud1 < 0) return stud0;
    }
    ;
    return 0;
  }
}

void main(List<String> args) {
  Solution s1=Solution();
  List<int> students = [1,1,0,0], sandwiches = [0,1,0,1];
  print(s1.countStudents(students, sandwiches));
}