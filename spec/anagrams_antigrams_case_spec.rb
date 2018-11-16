require('rspec')
require('pry')
require('anagrams_antigrams_case')



describe('#check_reverse_match') do
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


end
