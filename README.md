# _Anagrams and Antigrams in Ruby_

#### _Using Ruby, create a program that analyses anagrams and antigrams._

#### By _Robert Lee_

## Description

_Create a program that checks if two words are anagrams (reversed orders of each other that are intelligible in English).  The code must utilize Behavior / Test Driven Development._

## Setup/Installation Requirements

* Clone this repository using `git clone https://github.com/bobbydwise1/anagrams_antigrams.git`
* Navigate to the downloaded repository using a terminal window.
* Your computer must have Ruby installed.  In the terminal window at the working directory of the program, you will need to install the Ruby programs "rspec" and "pry".  Do this by putting this on the command line while connected to the internet:
  "$ gem install rspec"
  "$ gem install pry"
* To run the test cases, type at the terminal: $ rspec
* To run the main program, it is recommended to run it in irb.  Start irb, and when at the irb prompt, type "load 'lib/anagrams_antigrams_case.rb'
* irb will reply with "true".  Type "@user1.main" at the irb prompt to start the main program.

## Technologies Used

_Ruby, irb, Atom, Git._

## Behaviors

* Two different words are anagrams if they have the same numbers of letters, but in a different order.  Check if two different words are anagrams.  Letter case is ignored.

* Two different words are anti-grams if they don't have the same letters.  Check if two different words are anti-grams.  Letter case is ignored.

* For this program, a word is considered legal if it has at least one vowel.  Check the user input if it is a word.

* The program should be able to do single words and phrases.  Punctuation and special characters should be ignored.

## Specifications

* Count letters of an individual word by creating a letter count array:
  * Input: "what"
  * Output: "[1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0]"

* Ask user for input of two strings and check if they are words (have at least 1 vowel):
  * Input: "Hello", "loleh"
  * Ouput: "true"

* Compare two strings to see if they are anagrams:
  * Input: "Hello", "loleh"
  * Output: true

* Compare two strings to see if they are anti-grams (no matching letters):
  * Input: "Hello", "L3tt3rZ"
  * Output: false

## Known bugs

* The .main method does not seem to detect anti-grams correctly, but the separate antigram method appears to be working correctly.
* There appear to be some edge cases of user input strings that can break the code.

### License

MIT License

Copyright (c) 2018, _Robert Lee_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
