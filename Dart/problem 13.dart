import 'dart:io';

void main() {
  String s = stdin.readLineSync()!.trim();

  List<String> chars = s.split('');
  chars.sort(); // Lexicographically sort first

  List<String> result = [];
  Set<String> used = {};

  void backtrack(List<String> path, List<bool> visited) {
    if (path.length == chars.length) {
      result.add(path.join());
      return;
    }

    for (int i = 0; i < chars.length; i++) {
      if (visited[i]) continue;

      visited[i] = true;
      path.add(chars[i]);
      backtrack(path, visited);
      path.removeLast();
      visited[i] = false;
    }
  }

  backtrack([], List.filled(chars.length, false));

  // Print all results
  for (var perm in result) {
    print(perm);
  }
}
