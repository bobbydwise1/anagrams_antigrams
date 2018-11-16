class Anagrams_Words
  attr_accessor(:user_input_word)

  Anagrams_Words < String

  def initialize(user_input_word)
    @user_input_word = user_input_word
  end

  def check_reverse_match(user_second_word)
    if self.user_input_word.revese() == user_second_word
      return true
    else return false
    end
  end

end
