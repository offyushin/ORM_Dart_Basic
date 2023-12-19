import 'dart:math';

findMax(List<int> num) => num.reduce((v, e) => max(v, e));

void main() => findMax([2, 5, 1, 9, 3]);
