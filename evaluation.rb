
class Word
    attr_accessor :word, :meaning

    def initialize(word, meaning)
        @word = word
        @meaning = meaning
    end
end

class Dictionary
    attr_accessor :words

    def initialize(words)
        @words = words
    end

    def find_meaning(word)
        @words.find { | element | element.word == word }.meaning
    end
end

apple = Word.new('apple', 'A fruit')
p apple.word == 'apple' # => true
p apple.meaning == 'A fruit' # => true
car = Word.new('car', 'A transport')
dictionary = Dictionary.new([apple, car])
p dictionary.find_meaning('apple') == 'A fruit' # => true
p dictionary.find_meaning('car') == 'A transport' # => true