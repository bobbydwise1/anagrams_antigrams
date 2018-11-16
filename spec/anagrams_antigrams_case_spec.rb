require('rspec')
require('pry')
require('anagrams_antigrams_case')



describe('#anagram_antigrams_case_spec tester') do

  it('counts letters in a word') do
    test_object0 = Anagrams_Words.new("Hello","test")
    expect(test_object0.count_letters("what")).to(eq([1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0]))
  end
  #An anagram are words that have the same letters, rearranged
  it('compares two words if they are anagrams') do
    test_object1 = Anagrams_Words.new("ohio","oiho")
    expect(test_object1.check_if_anagram()).to(eq(true))
  end
  it('compares two words if they are anagrams') do
    test_object2 = Anagrams_Words.new("ohio","notamatch")
    expect(test_object2.check_if_anagram()).to(eq(false))
  end
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

  it('checks if a string has vowels') do
    test_object6 = Anagrams_Words.new("ohio","oiho")
    expect(test_object6.check_for_vowels?("letter A")).to(eq(true))
  end
  it('checks if a string has vowels') do
    test_object7 = Anagrams_Words.new("ohio","whtzvwlz")
    expect(test_object7.check_for_vowels?("N0 L3TT3RS")).to(eq(false))
  end

  it('creats an array of words from a phrase') do
    test_object8 = Anagrams_Words.new("not used","test")
    expect(test_object8.change_phrase_into_wordarray("Hello there!  Alls.")).to(eq(["hello","there","alls"]))
  end
  it('gets rid of special characters') do
    test_object9 = Anagrams_Words.new("not used", "whtzvwlz")
    expect(test_object9.remove_specials_from_phrase("abcdefg 1234%^&")).to(eq("abcdefg1234"))
  end

  it('checks if a phrase has vowels') do
    test_object10 = Anagrams_Words.new("ohio","whtzvwlz")
    expect(test_object10.check_word_array_for_vowels?(["N0","L3tt3rz"])).to(eq(false))
  end
  it('checks if a phrase has vowels') do
    test_object10 = Anagrams_Words.new("ohio","whtzvwlz")
    expect(test_object10.check_word_array_for_vowels?(["No","letters"])).to(eq(true))
  end
  #An anti-gram is when no letters in a word match
  it('compares two words if they are antigrams') do
    test_object11 = Anagrams_Words.new("ohio","oiho")
    expect(test_object11.check_if_antigram()).to(eq(false))
  end

  it('compares two words if they are antigrams') do
    test_object12 = Anagrams_Words.new("ohio","delaware")
    expect(test_object12.check_if_antigram()).to(eq(true))
  end

end
