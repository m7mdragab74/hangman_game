import 'dart:io';
import 'dart:math';

void main() {
  playHangman();
}

void playHangman() {
  List<String> wordList = ['Honda cbr rr 1000', 'Bmw e36', 'ninja h2', 'programming', 'mac'];
  String word = wordList[Random().nextInt(wordList.length)];
  List<String> guessedLetters = [];
  int remainingGuesses = 7;

  print('Welcome to Hangman!');
  print('The word has ${word.length} letters.');

  while (remainingGuesses > 0) {
    print('\nWord: ${displayWord(word, guessedLetters)}');
    print('Remaining guesses: $remainingGuesses');

    stdout.write('Guess a letter: ');
    String guess = stdin.readLineSync()?.toLowerCase() ?? '';

    if (!isValidInput(guess, guessedLetters)) {
      print('Please enter a valid letter you haven\'t guessed before.');
      continue;
    }

    guessedLetters.add(guess);

    if (!word.contains(guess)) {
      remainingGuesses--;
      print('Incorrect guess!');
    } else {
      print('Correct guess!');
    }

    if (word.split('').every((letter) => guessedLetters.contains(letter))) {
      print('Congratulations! You\'ve guessed the word: $word');
      break;
    }
  }

  if (remainingGuesses == 0) {
    print('Sorry, you ran out of guesses. The word was: $word');
  }

  stdout.write('Do you want to play again? (yes/no): ');
  String playAgain = stdin.readLineSync()?.toLowerCase() ?? '';
  if (playAgain == 'yes') {
    playHangman();
  } else {
    print('Thanks for playing!');
  }
}

String displayWord(String word, List<String> guessedLetters) {
  String displayedWord = '';
  for (String letter in word.split('')) {
    if (guessedLetters.contains(letter)) {
      displayedWord += letter;
    } else {
      displayedWord += '_';
    }
  }
  return displayedWord;
}

bool isValidInput(String guess, List<String> guessedLetters) {
  if (guess.length != 1 || !guess.contains(RegExp(r'[a-z]'))) {
    return false;
  }
  if (guessedLetters.contains(guess)) {
    return false;
  }
  return true;
}
