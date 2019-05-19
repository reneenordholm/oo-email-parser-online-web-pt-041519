# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :parse
  @@parse = []
  
  def initialize(parse)
    @parse = parse
    @@parse << self
  end
  
  def self.parse
    @@parse.each { |email| email.parse }
  end
end