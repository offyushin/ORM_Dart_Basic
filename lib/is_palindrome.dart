bool palindrome(String string) {
  string = string.toLowerCase();
  String reversString = string.split('').reversed.join('');
  return string == reversString;
}

void main() {
  print(palindrome('Racecar'));
  print(palindrome('hello'));
}