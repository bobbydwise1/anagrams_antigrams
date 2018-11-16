require('rspec')
require('pry')
require('anagrams_antigrams_case')



describe('#anagram_antigrams_case_spec tester') do
  #Testing case1: check if two words are simple direct reversals of each other
  it('compares two words if they are anagrams') do
    test_object1 = Anagrams_Words.new("ohio","oiho")
    expect(test_object1.check_reverse_match()).to(eq(true))
  end
  it('compares two words if they are anagrams') do
    test_object2 = Anagrams_Words.new("ohio","notamatch")
    expect(test_object2.check_reverse_match()).to(eq(false))
  end
  #Testing case2: ignore case and check if two words are simple direct reversals of each other
  it('compares two words if they are anagrams & ignores uppercase') do
    test_object3 = Anagrams_Words.new("Ohio","oihO")
    expect(test_object3.check_reverse_match()).to(eq(true))
  end
  it('compares two words if they are anagrams & ignores uppercase') do
    test_object4 = Anagrams_Words.new("Ohio","oiho")
    expect(test_object4.check_reverse_match()).to(eq(true))
  end
  it('compares two words if they are anagrams & ignores uppercase') do
    test_object5 = Anagrams_Words.new("ohio","oihO")
    expect(test_object5.check_reverse_match()).to(eq(true))
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



  #Testing case LAST:  is this phrase an anagram?
  it('checks if the second word has vowels') do
    test_object_last = Anagrams_Words.new("A man, a plan, a canal, Panama.","A man, a plan, a canal, Panama.".reverse)
    expect(test_object_last.check_reverse_match()).to(eq(true))
  end

end
