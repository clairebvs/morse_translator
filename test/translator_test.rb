require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/translate'

class TranslateTest < Minitest::Test

  def test_it_exists
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_can_translate_eng_letter_to_morse
    translator = Translate.new

    assert_equal ".-", translator.translate_letter("a")
  end

  def test_can_translate_different_letter_eng_to_morse
    translator = Translate.new

    assert_equal "-", translator.translate_letter("t")
  end

  def test_can_translate_sentence_eng_to_morse
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_can_translate_different_sentence_eng_to_morse
    skip
    translator = Translate.new

     assert_equal
  end
  def test_can_translate_upper_letter_eng_to_morse
    translator = Translate.new

    assert_equal ".-", translator.convert_upper_to_downcase("A")
  end

  def test_can_translate_number_to_morse
    translator = Translate.new

    assert_equal "...--", translator.translate_letter("3")
  end

  def test_can_translate_sentence_uppercase
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
  end

  def test_can_translate_sentence_with_upp_and_num
    translator = Translate.new

    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_can_read_a_file
    translator = Translate.new

    assert_equal "I am in a file", translator.read_a_file("input.txt")
    
  end

=begin
### Iteration 2
Translate English to Morse Code
* from a file

```
# in input.txt
I am in a file
```

```ruby
  $ translator = Translate.new
  => #<Translate:0x007fa1ab98cac0>
  $translator.from_file("input.txt")
  => ".. .--- ..-. .- ..-....-..."
```
=end

end
