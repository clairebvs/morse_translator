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

  def translate_letter_to_eng(morse)
    x = @dictionary.invert
    x[morse]
  end

  def morse_to_eng(sentence)
    sentence.chars.map do |morse|
      if morse == "."
         morse.translate_letter_to_eng
      end
    end
  end

  def read_a_file(file_name)
    File.read(file_name).chomp(" " + "\n")
  end

  def from_file(file_name)
    sentence = read_a_file("input.txt")
    eng_to_morse(sentence)
  end

end
