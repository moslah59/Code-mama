import 'dart:io';

void main() {
  final parts = stdin.readLineSync()!.trim().split(' ');
  final n = int.parse(parts[0]);
  final x = int.parse(parts[1]);
  final arr = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();

  bool found = false;

  // Iterate all subsets using mask
  for (int mask = 0; mask < (1 << n); mask++) {
    // For this subset, try all sign patterns
    int subsetSize = _countBits(mask);
    int totalSigns = 1 << subsetSize;

    // Create list of indices in this subset
    List<int> idxs = [];
    for (int i = 0; i < n; i++) {
      if ((mask & (1 << i)) != 0) idxs.add(i);
    }

    for (int signMask = 0; signMask < totalSigns; signMask++) {
      int sum = 0;
      for (int j = 0; j < idxs.length; j++) {
        int val = arr[idxs[j]];
        if ((signMask & (1 << j)) != 0) {
          sum += val;
        } else {
          sum -= val;
        }
      }
      if (sum == x) {
        found = true;
        break;
      }
    }

    if (found) break;
  }

  stdout.writeln(found ? 'Yes' : 'No');
}

// Helper: counts bits in mask
int _countBits(int mask) {
  int cnt = 0;
  while (mask > 0) {
    cnt++;
    mask &= (mask - 1);
  }
  return cnt;
}
