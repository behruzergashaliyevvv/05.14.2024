import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tak',
      home: TicTacToeGame(),
    );
  }
}

class TicTacToeGame extends StatefulWidget {
  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  late List<List<String>> _board;
  late String _currentPlayer;
  int _xHisob = 0;
  int _oHisob = 0;

  @override
  void initState() {
    super.initState();
    _initializeBoard();
  }

  void _initializeBoard() {
    _board = List.generate(3, (_) => List.filled(3, ''));
    _currentPlayer = 'X';
  }

  void _onTileTap(int row, int col) {
    if (_board[row][col] == '') {
      setState(() {
        _board[row][col] = _currentPlayer;
        _currentPlayer = (_currentPlayer == 'X') ? 'O' : 'X';
      });
      _checkWinner();
    }
  }

  void _checkWinner() {
    List<String> players = ['X', 'O'];
    for (String player in players) {
      // Horizontal
      for (int i = 0; i < 3; i++) {
        if (_board[i][0] == player &&
            _board[i][1] == player &&
            _board[i][2] == player) {
          _updateScore(player);
          return;
        }
      }

      // Vertical
      for (int i = 0; i < 3; i++) {
        if (_board[0][i] == player &&
            _board[1][i] == player &&
            _board[2][i] == player) {
          _updateScore(player);
          return;
        }
      }

      // Diagonal
      if (_board[0][0] == player &&
          _board[1][1] == player &&
          _board[2][2] == player) {
        _updateScore(player);
        return;
      }
      if (_board[0][2] == player &&
          _board[1][1] == player &&
          _board[2][0] == player) {
        _updateScore(player);
        return;
      }
    }
  }

  void _updateScore(String player) {
    setState(() {
      if (player == 'X') {
        _xHisob++;
      } else {
        _oHisob++;
      }
      _initializeBoard();
    });
  }

  void _restartGame() {
    setState(() {
      _initializeBoard();
    });
  }

  void _removeGame() {
    setState(() {
      _initializeBoard();
      _xHisob = 0;
      _oHisob = 0;
    });
  }

  Widget _buildTile(int row, int col) {
    return GestureDetector(
      onTap: () => _onTileTap(row, col),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            _board[row][col],
            style: TextStyle(fontSize: 48.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 6, 63),
        title: Text(
          'Tic Tak',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 28, 6, 63),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int j = 0; j < 3; j++) _buildTile(i, j),
                  ],
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _restartGame,
                    child: Text("Restart"),
                  ),
                  ElevatedButton(
                    onPressed: _removeGame,
                    child: Text("Remove"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "X: $_xHisob | O: $_oHisob",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
