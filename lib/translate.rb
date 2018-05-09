require './lib/translator'

class Translate

  def initialize
    @dictionary = Translator.new.dictionary
  end

  def translate_letter(letter)
    @dictionary[letter]
  end

  def convert_upper_to_downcase(letter)
    @dictionary[letter.downcase]
  end

  def eng_to_morse(sentence)
    sentence.chars.map do |letter|
      if letter == " "
        " "
      elsif letter.upcase
        convert_upper_to_downcase(letter)
      else
        translate_letter(letter)
      end
    end.join
  end

end
