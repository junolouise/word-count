=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase

  def initialize(word)
    @word = word
  end

  def word_count
    seperate_word = @word.split
    result = seperate_word.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end