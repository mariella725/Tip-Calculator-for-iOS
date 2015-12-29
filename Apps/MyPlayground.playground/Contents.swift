/*Final Lab: Tic Tac Toe Game
 By: Mariella Sypa
 Due: 12/16/2015 */

#include <iostream>
#include <string>

using namespace std;

const int SIZE = 9;

/*The printBoard function resets the board. */
void printBoard(char board[SIZE], int SIZE)
{
    cout << " " << board[0] << " | " << board[1] << " | " << board[2] << endl;
    cout << " - + - + -   " << endl;
    cout << " " << board[3] << " | " << board[4] << " | " << board[5] << endl;
    cout << " - + - + -   " << endl;
    cout << " " << board[6] << " | " << board[7] << " | " << board[8] << endl;
}
/* The updateBoard function takes the player's desired move and the player's
 character, checks to see if the move is valid, and outputs an updated board. */
void updateBoard(int playerMove, char player1or2, char gameBoard[SIZE], int SIZE)
{
    
    if((playerMove == 1 && gameBoard[0] == '1') || (playerMove == 2 && gameBoard[1] == '2') || (playerMove == 3 && gameBoard[2] == '3') || (playerMove == 4 && gameBoard[3] == '4') || (playerMove == 5 && gameBoard[4] == '5') || (playerMove == 6 && gameBoard[5] == '6') || (playerMove == 7 && gameBoard[6] == '7') || (playerMove == 8 && gameBoard[7] == '8') || (playerMove == 9 && gameBoard[8] == '9'))
    {
        if(player1or2 == 'X')
            gameBoard[playerMove - 1] = 'X';
        else if(player1or2 == 'O')
            gameBoard[playerMove - 1] = 'O';
        cout << " " << gameBoard[0] << " | " << gameBoard[1] << " | " << gameBoard[2] << endl;
        cout << " - + - + -   " << endl;
        cout << " " << gameBoard[3] << " | " << gameBoard[4] << " | " << gameBoard[5] << endl;
        cout << " - + - + -   " << endl;
        cout << " " << gameBoard[6] << " | " << gameBoard[7] << " | " << gameBoard[8] << endl;
        
    }
    
    else
        cout << "This move is not valid" << endl;
}
/*The gameOver function uses the gameBoard[SIZE] array to
 determine whether or not the game is over.
 When the function is equal to one, the game is over.
 When the function is equal to negative one,
 the game is not over. */

int gameOver(char gameBoard[SIZE], int SIZE)
{
    if((gameBoard[0] != '1' && gameBoard[1] != '2' && gameBoard[2] != '3') &&  (gameBoard[0] == gameBoard[1]) && (gameBoard[1] == gameBoard[2]))
        return 1;
    else if((gameBoard[3] != '4' && gameBoard[4] != '5' && gameBoard[5] != '6') && (gameBoard[3] == gameBoard[4]) && (gameBoard[4] == gameBoard[5]))
        return 1;
    else if((gameBoard[6] != '7' && gameBoard[7] != '8' && gameBoard[8] != '9') && (gameBoard[6] == gameBoard[7]) && (gameBoard[7] == gameBoard[8]))
        return 1;
    else if((gameBoard[0] != '1' && gameBoard[4] != '5' && gameBoard[8] != '9') && (gameBoard[0] == gameBoard[4]) && (gameBoard[4] == gameBoard[8]))
        return 1;
    else if((gameBoard[0] != '1' && gameBoard[3] != '4' && gameBoard[6] != '7') && (gameBoard[0] == gameBoard[3]) && (gameBoard[3] == gameBoard[6]))
        return 1;
    else if((gameBoard[2] != '3' && gameBoard[4] != '5' && gameBoard[6] != '7') && (gameBoard[0] == gameBoard[4]) && (gameBoard[4] == gameBoard[6]))
        return 1;
    else if((gameBoard[1] != '2' && gameBoard[4] != '5' && gameBoard[7] != '8') && (gameBoard[1] == gameBoard[4]) && (gameBoard[4] == gameBoard[7]))
        return 1;
    else if((gameBoard[2] != '3' && gameBoard[5] != '6' && gameBoard[8] != '9') && (gameBoard[2] == gameBoard[5]) && (gameBoard[5] == gameBoard[8]))
        return 1;
    else if((gameBoard[0] != '1' && (gameBoard[1] != '2') && (gameBoard[2] != '3') && (gameBoard[3] != '4') && (gameBoard[4] != '5') && (gameBoard[5] != '6') && (gameBoard[6] != '7') && (gameBoard[7] != '8') && (gameBoard[8] != '9'))
            return 0;
            else
            return -1;
            }
    /* The isWinner function takes the current player's move and decides
     who the winner is. It only works when gameOver equals 1 and the
     game is over. */
            
            void isWinner(char player1or2)
    {
        if(player1or2 == 'X')
            cout << "Congrats, Player 1, you're the winner!!!" << endl;
        else
            cout << "Congrats, Player 2, you're the winner!!" << endl;
        
    }
            
            int main ()
    {
        char ticTac[SIZE] = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};
        char ticTacNew[SIZE] = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};
        int currentMove = 0;
        char player;
        
        string yesNo;
        
        do /* This do while loop will run through the entire game as long as the player says, "Yes" to the first prompt. */
        {
            
            cout << "Hi! Welcome to Mariella's Tic Tac Toe Game!" << endl;
            printBoard(ticTacNew, SIZE); /* A new, blank board is printed. */
            
            cout << "Would you like to play?" << endl;
            cin >> yesNo;
            
            if(yesNo == "yes" || yesNo == "Yes")
            {
                cout << "Okay great! Let's begin. Player 1 will be 'X' and Player 2 will be 'O'." << endl;
                
                do /* This do while loop will run prompt the player's to input their characters and moves until the game is over.*/
                {
                    
                    cout << "Please enter your character (X or O): " << endl;
                    cin >> player;
                    cout << "Now enter your desired spot on the board (1-9) (ex: 2)" << endl;
                    cin >> currentMove;
                    updateBoard(currentMove, player, ticTac, SIZE);	/* The updateBoard function is called on to check that the move is valid and print the updated board. */ 
                    gameOver(ticTac, SIZE); /* The gameOver function is called on to check if the game is over yet. */
                    
                }
                
                while(gameOver(ticTac, SIZE)!= 1);
                
                if(gameOver(ticTac, SIZE) == 1) 
                    isWinner(player);
                else if(gameOver(ticTac, SIZE) == 0))
                    cout << "It's a draw!" << endl;
            }
            else 
                cout << "That's too bad. Maybe some other time!" << endl; 
        }
        
        while(yesNo == "yes" || yesNo == "Yes");
        
        return 0;
    }
