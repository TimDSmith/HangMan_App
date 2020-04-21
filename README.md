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

This Hangman quiz will reinforce what we've already learnt about programming. I think it will be a nice supplimentry tool to use
along side our lessons.

The target audience will be students of CoderAcademy or anyone trying to learn the Ruby programming language.


Features
1. Selecting muliple choice answers via input
When presented with a question you will have 3 different answers to choose from with only 1 being correct.
There will be a correct_answer variable and a wrong_answer/wrong_question variable.
Error handling will make sure that either the numbers 1, 2 or 3 are inputed and not characters/strings ect.
It will tell user to only input using 1,2 or 3.

2. Using a .txt file with a selection of words/answers
It will pull a random word with 1 correct and 2 wrong definitions, these will likely be stored in a hash/array.



3. 


