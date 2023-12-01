void main() {
  List<String> players = ['Player 1', 'Player 2', 'Player 3', 'Player 4'];
  int currentPlayerIndex = 0;
  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;
  List<int> clapCountsByPlayer = [0,0,0,0];

  for (int i = 1; i < 100; i++) {
    String currentPlayer = players[currentPlayerIndex];
    if (i % 30 == 0){
      print('$currentPlayer:ahh');
      ahhCount++;
    } else if (i % 3 == 0) {
      print('$currentPlayer:clap');
      clapCount++;
      clapCountsByPlayer[currentPlayerIndex]++;
    } else if (i % 10 == 0) {
      print('$currentPlayer:rool');
      roolCount++;
    } else {
      print('$currentPlayer: $i');
    }
    currentPlayerIndex = (currentPlayerIndex + 1) % players.length;
  }

  print('\nclap의 총 갯수: $clapCount');
  print('rool의 총 갯수: $roolCount');
  print('ahh의 총 갯수: $ahhCount');

  int maxClapCount = 0;
  String playerWithMaxClap = "";

  for (int i = 0; i < players.length;i++){
    int count = clapCountsByPlayer[i];
    print('${players[i]}: $count');

    if (count > maxClapCount) {
      maxClapCount = count;
      playerWithMaxClap = players[i];
    }
  }
  print('\n가장많은 clap을 출력한 플레이어: $playerWithMaxClap');
}