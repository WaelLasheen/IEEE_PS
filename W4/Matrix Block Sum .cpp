class Solution {
public:
    vector<vector<int>> matrixBlockSum(vector<vector<int>>& mat, int k) {
        int r = mat.size(), c = mat[0].size();
        vector<vector<int>> out(r, vector<int>(c, 0));

        // Calculate the prefix sum matrix
        vector<vector<int>> prefixSum(r + 1, vector<int>(c + 1, 0));
        for (int i = 1; i <= r; i++) {
            for (int j = 1; j <= c; j++) {
                prefixSum[i][j] = mat[i - 1][j - 1] + prefixSum[i - 1][j] + prefixSum[i][j - 1] - prefixSum[i - 1][j - 1];
            }
        }

        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                int rs = max(i - k, 0);
                int cs = max(j - k, 0);
                int re = min(i + k, r - 1);
                int ce = min(j + k, c - 1);

                out[i][j] = prefixSum[re + 1][ce + 1] - prefixSum[re + 1][cs] - prefixSum[rs][ce + 1] + prefixSum[rs][cs];
            }
        }

        return out;
    }
};
