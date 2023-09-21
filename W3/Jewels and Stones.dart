class Solution {
  int numJewelsInStones(String jewels, String stones) {
    int c=0;    //counter
    for(int i=0;i<jewels.length;i++){
      for(int j=0;j<stones.length;j++){
        if(stones[j]==jewels[i])
          c++;
      }
    }
    return c;
  }
}