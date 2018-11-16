class Anagrams_Words
  attr_accessor(:user_input_word,:user_second_word)

  def initialize(user_input_word,user_second_word)
    @user_input_word = user_input_word
    @user_second_word = user_second_word
  end

  def count_letters(string)
    index = 0
    letter_array_count = Array.new(26, 0)
    while index < string.length
      case string[index].downcase
      when "a"
        letter_array_count[0] = letter_array_count[0] + 1
      when "b"
        letter_array_count[1] = letter_array_count[1] + 1
      when "c"
        letter_array_count[2] = letter_array_count[2] + 1
      when "d"
        letter_array_count[3] = letter_array_count[3] + 1
      when "e"
        letter_array_count[4] = letter_array_count[4] + 1
      when "f"
        letter_array_count[5] = letter_array_count[5] + 1
      when "g"
        letter_array_count[6] = letter_array_count[6] + 1
      when "h"
        letter_array_count[7] = letter_array_count[7] + 1
      when "i"
        letter_array_count[8] = letter_array_count[8] + 1
      when "j"
        letter_array_count[9] = letter_array_count[9] + 1
      when "k"
        letter_array_count[10] = letter_array_count[10] + 1
      when "l"
        letter_array_count[11] = letter_array_count[11] + 1
      when "m"
        letter_array_count[12] = letter_array_count[12] + 1
      when "n"
        letter_array_count[13] = letter_array_count[13] + 1
      when "o"
        letter_array_count[14] = letter_array_count[14] + 1
      when "p"
        letter_array_count[15] = letter_array_count[15] + 1
      when "q"
        letter_array_count[16] = letter_array_count[16] + 1
      when "r"
        letter_array_count[17] = letter_array_count[17] + 1
      when "s"
        letter_array_count[18] = letter_array_count[18] + 1
      when "t"
        letter_array_count[19] = letter_array_count[19] + 1
      when "u"
        letter_array_count[20] = letter_array_count[20] + 1
      when "v"
        letter_array_count[21] = letter_array_count[21] + 1
      when "w"
        letter_array_count[22] = letter_array_count[22] + 1
      when "x"
        letter_array_count[23] = letter_array_count[23] + 1
      when "y"
        letter_array_count[24] = letter_array_count[24] + 1
      when "z"
        letter_array_count[25] = letter_array_count[25] + 1
      else
        puts "Non-alphabet character detected"
      end
    index = index + 1
    end
    return letter_array_count
  end

  def check_if_anagram()
    if count_letters(self.user_input_word.downcase) == count_letters(self.user_second_word.downcase)
      return true
    else
      return false
    end
  end

  def change_phrase_into_wordarray(string_phrase)
    output_array = string_phrase.downcase.scan(/\w+/)
  end

  def remove_specials_from_phrase(string_phrase)
    return string_phrase.gsub(/[^0-9A-Za-z]/, '')
  end

  def check_for_vowels?(string)
    return string.match(/[aeiou]/) != nil
    #if the above is true, vowels exist
  end

  def check_word_array_for_vowels?(word_array)
    index = 0
    while index < word_array.length
      if check_for_vowels?(word_array[index]) == false
        return false
      end
      index = index + 1
    end
    return true
  end

  def check_if_antigram()
    index = 0
    array1 = count_letters(self.user_input_word.downcase)
    array2 = count_letters(self.user_second_word.downcase)
    while index < 26
      if ((array1[index] == 0) && (array2[index] != 0)) || ((array1[index] != 0) && (array2[index] == 0))
        return true
      else
        return false
      end
    index = index + 1
    end
  end
  
end
