=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
require 'pry'
class Phrase

  def initialize(word)
    @word = word.gsub(/[^a-z\s0-9]/, ' ')
  end

  def word_count
    if @word.match(" ")
      seperate_word = @word.split
    elsif @word.match("\n")
      seperate_word = @word.delete!("\n").split(",")
    else
      seperate_word = @word.split(",")
    end
    result = seperate_word.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end