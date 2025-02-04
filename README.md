Hangman CLI Game
A simple command-line implementation of the classic Hangman game written in Dart. Guess the hidden word by entering letters one at a time before running out of attempts!

Features
Predefined Word List: Words/phrases are randomly selected from a list (includes motorcycle models, tech terms, and more).

Case-Insensitive Input: Guesses are not case-sensitive (e.g., "A" and "a" are treated the same).

Guesses Counter: You get 7 attempts to guess the word correctly.

Dynamic Word Display: See which letters you've guessed correctly with underscores (_) for missing letters.

Win/Lose Detection: Get immediate feedback on whether you've won or lost.

Play Again: Restart the game without exiting the app.

Installation
Ensure you have the Dart SDK installed.

Clone this repository:

bash
git clone https://github.com/[your-username]/hangman-cli-dart.git
cd hangman-cli-dart
Run the game:

bash
dart run bin/main.dart

How to Play
Start the Game: Launch the app, and a random word will be chosen.

Guess Letters: Enter a single letter when prompted.

Feedback:

Correct guesses reveal the letter in the word.

Incorrect guesses reduce your remaining attempts.

Win: Guess all letters in the word before running out of attempts.

Lose: If you exhaust all 7 guesses, the game ends.

Replay: Option to play again after winning or losing.

Example Game
Welcome to Hangman!
The word has 11 letters.

Word: _ _ _ _ _   _ _ _   _ _   _ _ _ _
Remaining guesses: 7
Guess a letter: a
Correct guess!

Word: _ _ _ _ a   _ _ _   _ _   _ _ _ _
Remaining guesses: 7
Guess a letter: e
Incorrect guess!

... (game continues until win/lose) ...

Congratulations! You've guessed the word: Honda cbr rr 1000
Do you want to play again? (yes/no): no
Thanks for playing!

Notes
The word list includes multi-word phrases (e.g., "Honda cbr rr 1000"). Letters and numbers are treated as individual characters.

Modify the wordList in the code to customize the words used in the game.

Contributing
Feel free to fork this repository, open issues for bugs/suggestions, or submit pull requests with improvements!
