bool palindrome(String string) {
  String reversString = string.split('').reversed.join('');
  return string == reversString;
}

void main() {
  print(palindrome('racecar'));
  print(palindrome('hello'));
}