require('rspec')
require('pry')
require('anagrams_antigrams_case')

test_object = Anagrams_Words.new("ohio","oiho")

describe('#check_reverse_match') do
  it('compares users word to second word if they are anagrams') do
    expect(test_object.check_reverse_match()).to(eq(true))
  end

end
