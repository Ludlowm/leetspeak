class String
  define_method(:leetspeak) do
    new_word = ""
    new_words = []
    split_sentence = self.split().each() do |word|

      new_letters = []
        letters = word.split("")
        letters.each() do |letter|
          if letter == "e"
            letter = 3
            new_letters.push(letter)
          elsif letter == "o"
            letter = 0
            new_letters.push(letter)
          elsif letter == "I"
            letter = 1
            new_letters.push(letter)
          elsif word[0] == "s"
            new_letters.push(letter)
          elsif letter == "s"
            letter = "z"
            new_letters.push(letter)
          else
            new_letters.push(letter)
          end
          new_word = new_letters.join()
        end
      new_words.push(new_word)
    end
    new_words.join(" ")
  end
end
