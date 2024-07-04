int add(int a, int b) {
  var c = a + b;
  return c;
}

int sub(int a, int b) {
  var c = a - b;
  return c;
}

String showFunc(int a, int b) {
  var c = add(a, b);  
  var d = sub(a, b);
  return ('Add $a + $b = $c\nSub $a - $b = $d');
}