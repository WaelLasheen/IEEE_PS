class Solution {
public:
    int countStudents(vector<int>& students, vector<int>& sandwiches) {
        for(int i:sandwiches){
            for(int j=0;j<students.size();j++){
                if(i==students[j]){
                    students.erase(students.begin()+j);
                    break;
                }
                if(i !=students[j] && j==students.size()-1) goto a;
            }
        }
        a:return students.size();
    }
};