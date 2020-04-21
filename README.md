# HangMan_App
Statement of purpose

Hangman is a simple game where you are given a secret word at random and you guess 1 letter at a time.
If your guess is correct then the letter is added and you guess again. This repeats until you have correctly guessed the word.
If your guess is wrong then a piece of the hangman gets added to the imageand when enough wrong guesses completes the hangman image
then you lose the game.
I decided to add a bit of a twist with hangman by instead of guessing a secret word you instead need to correctly select the correct
definition of a randomly selected programming related word.
You still have wrong guesses which add a piece to the hangman but when you correctly guess a definition instead of winning it simply
goes to the next question.
The goal then is to accumilate correct guesses to reach the winning condition which is reaching question 10.
A total score of correct guess and wrong guesses will also be provided.

This Hangman quiz will reinforce what we've/anyone already learnt/is learning about programming. I think it will be a nice supplimentry tool to use
along side any lessons. 

The target audience will be students of CoderAcademy or anyone trying to learn the Ruby programming language.


Features
1. Selecting muliple choice answers via input
When presented with a question you will have 3 different answers to choose from with only 1 being correct.
There will be a correct_answer variable and a wrong_answer/wrong_question variable.
Error handling will make sure that either the numbers 1, 2 or 3 are inputed and not characters/strings ect.
It will tell user to only input using 1,2 or 3.

2. Using a .txt file with a selection of words/answers
It will pull a random word with 1 correct and 2 wrong definitions, these will likely be stored in a hash/array.



3. Game over when 3 wrong answers
The program will have a loop that will be broken when 3 wrong answers is met
The program will make sure that wrong answers doesnt go over 3 such as to 4 ect




User Interaction and Experience
Welcome screen
User must press any key to continue
Program prompts user to 'start game', 'quit game' and 'help' with game
-Selecting 'start game' program continues
-Selecting 'quit game' exits the program
-Selecting 'help' will provide instructions on how to play game
Selecting anything other than 1, 2 or 3 will prompt program to tell user to try again
Randomly selects a 'word' plus 'definition'
The user is given 3 incorrect attempts
User selects one of the provided definitions by entering either 1,2 or 3
If anything other than 1, 2 or 3 is entered the program tells the user to only use 1, 2 or 3 when selecting an answer
If input is correct  then the 'score' increments by 1 and next 'word' and 'definition' is displayed
If input is incorrect then 'score' is not incremented and the next 'word' and 'definition' is displayed
This continues until the user either completes question 10 or the ascii image of the hangman completes
If the ascii image of the hangman completes then the user loses and is displayed with the 'game over' screen
If question 10 reached and answered then the 'congratulations' page is presented
User is then redirected back to 'Welcome screen'

