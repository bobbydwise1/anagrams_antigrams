require('rspec')
require('pry')
require('anagrams_antigrams_case')



describe('#anagram_antigrams_case_spec tester') do
  #Testing case1: check if two words are simple direct reversals of each other
  it('compares two words if they are anagrams') do
    test_object1 = Anagrams_Words.new("ohio","oiho")
    expect(test_object1.check_if_anagram()).to(eq(true))
  end
  it('compares two words if they are anagrams') do
    test_object2 = Anagrams_Words.new("ohio","notamatch")
    expect(test_object2.check_if_anagram()).to(eq(false))
  end
  #Testing case2: ignore case and check if two words are simple direct reversals of each other
  it('compares two words if they are anagrams & ignores uppercase') do
    test_object3 = Anagrams_Words.new("Ohio","oihO")
    expect(test_object3.check_if_anagram()).to(eq(true))
  end
  it('compares two words if they are anagrams & ignores uppercase') do
    test_object4 = Anagrams_Words.new("Ohio","oiho")
    expect(test_object4.check_if_anagram()).to(eq(true))
  end
  it('compares two words if they are anagrams & ignores uppercase') do
    test_object5 = Anagrams_Words.new("ohio","oihO")
    expect(test_object5.check_if_anagram()).to(eq(true))
  end
  #Testing case3: check if the second word has vowels
  it('checks if the second word has vowels') do
    test_object6 = Anagrams_Words.new("ohio","oiho")
    expect(test_object6.check_for_vowels?()).to(eq(true))
  end
  it('checks if the second word has vowels') do
    test_object7 = Anagrams_Words.new("ohio","whtzvwlz")
    expect(test_object7.check_for_vowels?()).to(eq(false))
  end
  #Testing case4: get rid of specials chars
  it('gets rid of special characters') do
    test_object8 = Anagrams_Words.new("abcdefghijklmnopqrstuvwxyz1234567890!@\#\{$%^&*()_+", "whtzvwlz")
    expect(test_object8.remove_specials_from_phrase()).to(eq("abcdefghijklmnopqrstuvwxyz1234567890"))
  end

  it('creats an array of words from a phrase') do
    test_object9 = Anagrams_Words.new("Hello there!  Alls.","test")
    expect(test_object9.change_phrase_into_wordarray()).to(eq(["hello","there","alls"]))
  end

  it('counts letters in a word') do
    test_object10 = Anagrams_Words.new("Hello","test")
    expect(test_object10.count_letters("what")).to(eq([1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0]))
  end


end
