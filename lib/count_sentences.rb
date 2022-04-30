require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    # count = 0
    # count = count + self.count('.')
    # count = count + self.count('?')
    # count = count + self.count('!')
    # array = self.split('.').reject { |c| c.empty? }join('.').split('?').reject { |c| c.empty? }.join('?').split('!').reject { |c| c.empty? }.join('!')
    #  .join.split('?').join.split('!')
    # .reject { |c| c.empty? }
    array = self.squeeze.split('')
    puts array
    count = 0
    array.each do |char|
      if (char == '?' || char == '!' || char == '.')
        count += 1
      end
    end
    count
  end
end