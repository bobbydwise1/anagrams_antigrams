class Anagrams_Words
  attr_accessor(:user_input_word,:user_second_word)

  def initialize(user_input_word,user_second_word)
    @user_input_word = user_input_word
    @user_second_word = user_second_word
  end

  def check_reverse_match()
    if self.user_input_word.reverse.downcase == self.user_second_word.downcase
      return true
    else
      return false
    end
  end

  def stand_alone
    puts "hello"
  end

  def check_for_vowels?()
    return self.user_second_word.downcase().match(/[aeiou]/) != nil
    #if the above is true, vowels exist
  end

  def remove_specials_from_phrase()
    return self.user_input_word.gsub(/[^0-9A-Za-z]/, '')
  end

  def change_phrase_into_wordarray()
    output_array = user_input_word.downcase.scan(/\b[a-zA-Z]?\S+[a-zA-Z]?\b/)
  end
end
