class Solution {
  bool isValid(String s) {
    List<String> a=[] ;
    if(s.length==0) return false;

    for(int i=0;i<s.length;i++){
      if(s[i]=='{' || s[i]=='(' || s[i]=='[' ){
        a.add(s[i]);
      }
      else{
        if(a.length !=0 &&(s[i]=='}'&&a.last=='{' || s[i]==')'&&a.last=='(' || s[i]==']'&&a.last=='[')){
          a.removeLast();
        }
        else{
          return false;
        }
      }
    }
    return a.isEmpty;
  }
}

void main(List<String> args) {
  Solution s1 =Solution();
  String s = "()[]{}";
  print(s1.isValid(s));
}