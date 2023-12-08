class Word {
  String word = 'Flutter';

  bool isVowel(int i) {
    // || 은 or 논리 연산자(logical operation) : 한 개라도 true면 true를 반환
    return word.substring(i, i + 1) == 'a' ||
           word.substring(i, i + 1) == 'e' ||
           word.substring(i, i + 1) == 'i' ||
           word.substring(i, i + 1) == 'o' ||
           word.substring(i, i + 1) == 'u';
  }
  
  bool isConsonant(int i) {
    // && 은 and 논리 연산자(logical operation) : 모두 true여야 true를 반환
    return word.substring(i, i + 1) != 'a' &&
           word.substring(i, i + 1) != 'e' &&
           word.substring(i, i + 1) != 'i' &&
           word.substring(i, i + 1) != 'o' &&
           word.substring(i, i + 1) != 'u';
  }
}

void main() {
  Word word =  Word();

  print(word.isVowel(4)); // t
  print(word.isConsonant(5)); // e
}
