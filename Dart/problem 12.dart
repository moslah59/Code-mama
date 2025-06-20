import 'dart:io';

int countPaths(List<List<int>> grid, int n, int m) {
  List<List<int>> dp = List.generate(n, (_) => List.filled(m, 0));

  // If the starting cell is blocked
  if (grid[0][0] == 1) return 0;

  dp[0][0] = 1;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      if (grid[i][j] == 1) {
        dp[i][j] = 0; // Blocked cell
      } else {
        if (i > 0) dp[i][j] += dp[i - 1][j];
        if (j > 0) dp[i][j] += dp[i][j - 1];
      }
    }
  }

  return dp[n - 1][m - 1];
}

void main() {
  int t = int.parse(stdin.readLineSync()!);

  for (int tc = 0; tc < t; tc++) {
    List<String> dims = stdin.readLineSync()!.trim().split(' ');
    int n = int.parse(dims[0]);
    int m = int.parse(dims[1]);

    List<List<int>> grid = [];
    for (int i = 0; i < n; i++) {
      List<int> row = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
      grid.add(row);
    }

    print(countPaths(grid, n, m));
  }
}
