void main() {
  List<int> cards = [1, 2, 3, 4, 5]; // 전체 카드 목록

  List<int> myCards = [1, 2, 3, 5]; // 내가 소유한 카드 목록

  List<int> noCard = []; // 소유하지 않을 카드를 가져올 리스트

  for (int card in cards) { // 전체 카드 목록을 반복할 반복문
    if (!myCards.contains(card)) { // card가 cards를 반복할때 myCards에 포함되지 않은
      // 카드를 확인하면 noCard 에 추가!
      noCard.add(card);
    }
  }

  print('없는카드: $noCard');

}

