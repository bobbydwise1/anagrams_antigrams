class Anagrams_Words
  attr_accessor(:user_input_word,:user_second_word)

  # Anagrams_Words < String

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

  def check_for_vowels?()
    return self.user_second_word.downcase().match(/[aeiou]/) != nil
    #if the above is true, vowels exist
  end
end
