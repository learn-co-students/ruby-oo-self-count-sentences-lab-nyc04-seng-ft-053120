require 'pry'

class String

  def sentence?
    self.end_with?(".") #to determine what the final character in a string is
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #string to array with each word as an element
    #remove special characters any and all periods, question marks and exclamation marks.
    #count each word
    #return an integer
    new_array = self.split(/[.?!]/).reject{|string| string.empty?}
    return new_array.length
  end
end