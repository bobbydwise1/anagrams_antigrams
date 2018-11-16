# _Anagrams and Antigrams in Ruby_

#### _Using Ruby, create a program that analyses anagrams and antigrams._

#### By _Robert Lee_

## Description

_Create a program that checks if two words are anagrams (reversed orders of each other that are intelligible in English).  The code must utilize Behavior / Test Driven Development._

## Setup/Installation Requirements

* Clone this repository using `git clone https://github.com/ `
* Navigate to the downloaded repository using a terminal window.
* Your computer must have Ruby installed.  Run the code by typing "ruby sdkfasfdas.rb"

## Technologies Used

_Ruby, Atom, Git._

## Specifications

Directly from the requirements page:

Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters. Create an algorithm with an anagram() method that follows the rules below.

You should have at least one passing test for each of the included steps (in other words, a minimum of 5 tests). Make sure you commit after you write each test and after each passing test. Your final project should have at least 11 commits, including one for each written test and passing test.

* 1. Check if two words are anagrams. If they are, your method should return something like: "These words are anagrams."

*  2. Account for the possibility that words may have different cases, but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

*  3. Check if inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words! (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels; but you are welcome to add other rules as well.)

*  4. If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

*  5. Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.

###### OTHER REQUIREMENTS:

* Code uses a custom class and instance variables.

* Specs have complete coverage for the behaviors that need to be tested. There should be at least 5 unit tests.

* All specs are passing.

* Logic is easy to understand.

* Code has proper indentation and spacing.

* Variable names are descriptive.

* Thorough Git documentation is present (regular commits with clear messages completing the sentence "This commit will..." and a complete README). There should be at least 11 commits.

* Required functionality is in place by the 5:00pm Friday deadline.

* Project is in a polished, portfolio-quality state.

* Project demonstrates understanding of this week's concepts. If prompted, you can discuss your code with an instructor using the correct terminology.

### License

MIT License

Copyright (c) 2018, _Robert Lee_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
