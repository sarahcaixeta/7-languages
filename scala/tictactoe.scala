class TicTacToe() {
  val board = Array("1", "2", "3", "4", "5", "6", "7", "8", "9")
  val winningSequences = List((0,1,2), (3,4,5), (6,7,8), (0,3,6), (1,4,7), (2,5,8), (0,4,8), (2,4,6))
  var currentPlayer = "O"
  var gameOver = false

  def showBoard() {
    println("== " + currentPlayer + "'s turn =='")
    println(board(0) + " | " + board(1) + " | " + board(2))
    println(board(3) + " | " + board(4) + " | " + board(5))
    println(board(6) + " | " + board(7) + " | " + board(8))
  }

  def play() {
    while (!isGameOver()) {
      switchPlayer()
      showBoard()

      var position = Console.readInt();

      board(position - 1) = currentPlayer

    }
  }

  def switchPlayer() {
    if (currentPlayer == "X")
      currentPlayer = "O"
    else
      currentPlayer = "X"
  }

  def isGameOver():Boolean = {
    winningSequences.exists{case (i,j,k) => board(i) == currentPlayer && board(j) == currentPlayer && board(k) == currentPlayer}
  }

}

val game = new TicTacToe()
game.play
