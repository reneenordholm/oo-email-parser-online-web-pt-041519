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
    @@parse.each { |email| puts email.split(",") }
  end
end


# def self.new_from_filename(name)
#     song = self.new 
#     song.name = (name.split(" - ")[1].chomp(".mp3"))
#     song.artist_name = (name.split(" - ")[0])
#     song
#   end