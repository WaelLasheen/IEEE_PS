class Solution {
  int calPoints(List<String> operations) {
    List<int>sum=[];
    operations.forEach((i) {
      if(i=='+'){
        int top=sum.last;
        sum.removeLast();
        int new_top = top+sum.last;
        sum.add(top);
        sum.add(new_top);
      }
      else if(i=='D') 
        sum.add(2*sum.last);
      else if(i=='C') 
        sum.removeLast();
      else
        sum.add(int.parse(i));
     });
     int total=0;
     sum.forEach((i) { 
      total +=i;
     });
     return total;
  }
}
