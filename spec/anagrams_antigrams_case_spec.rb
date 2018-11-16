require('rspec')
require('pry')
require('anagrams_antigrams_case')


describe('#check_reverse_match') do
  it('compares users word to second word if they are anagrams') do
    expect("ohio".check_reverse_match("oiho")).to(eq(true))
  end

end
