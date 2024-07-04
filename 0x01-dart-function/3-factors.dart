int fact(int f) {
  if (f == 1 || f <= 1) {
    return 1;
  }
  else {
    return factorial(f);
  }
}

int factorial(int k) {
  // TODO: Faster algorithm
  if (k < 0) {
    throw ArgumentError.value(k);
  }
  if (k == 0) {
    return 1;
  }
  var result = k;
  k--;
  while (k > 1) {
    result *= k;
    k--;
  }
  return result;
}