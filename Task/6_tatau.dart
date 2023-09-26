import 'dart:io';
import 'dart:math';

void main() {
  print('Welcome to Hangman!');
  final List<String> words = ['meow', 'bobo', 'zipper', 'spidey', 'lemon'];
  final Random random = Random();
  final String selectedWord = words[random.nextInt(words.length)];
  List<String> letters = selectedWord.split('');
  final Set<String> guessedLetters = Set<String>();
  int attempts = 5; // Number of attempts allowed

  List<String> hiddenWord = [];
  for (int i = 0; i < selectedWord.length; i++) {
    hiddenWord.add('_');
  }

  while (attempts > 0) {
    String hidword = hiddenWord.join();
    print('Word: $hidword');
    print('Attempts left: $attempts');

    stdout.write('Guess a letter: ');
    String? guess = stdin.readLineSync()?.toLowerCase();

    if (guess == null || guess.isEmpty) {
      print('Invalid input. Please enter a single letter');
      continue;
    }
    if (guessedLetters.contains(guess)) {
      print('You already guessed "$guess". Try again.');
      continue;
    }

    guessedLetters.add(guess);

    if (letters.contains(guess)) {
      for (int i = 0; i < letters.length; i++) {
        if (letters[i] == guess) {
          String correctLetter = hiddenWord[i];
          hiddenWord[i] = guess;
          letters[i] = correctLetter;
        }
      }

      if (!hiddenWord.contains('_')) {
        print('Congratulations! You guessed the word: $selectedWord');
        break;
      }
    } else {
      print('Incorrect guess.');
      attempts--;
    }
  }

  if (attempts == 0) {
    print('You ran out of attempts. The word was: $selectedWord');
  }
}
