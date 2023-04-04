import 'package:algo/src/algos/base/binary_search.dart';
import 'package:test/test.dart';

void main() {
  test('binary_search', () {
    expect(
        List.of(
          [-101, -5, 10, 10, 12, 128],
        ).binarySearchOf(12),
        4);
  });
}
