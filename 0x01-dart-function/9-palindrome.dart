bool isPalindrome(String s) {
  if (s.length < 3)
    return false;

  String inReverse = "";

  for (var i = s.length - 1; i >= 0; i--) {
    inReverse += s[i];
  }
  if (inReverse == s)
    return true;
  else
    return false;
}