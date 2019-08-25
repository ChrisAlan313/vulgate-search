class Verse < ApplicationRecord
  attr_reader :book_abbreviation
  attr_reader :chapter_number
  attr_reader :verse_number
  attr_reader :text

  def initialize(line)
    verse_hash = BibleParser.parse_line(line)

    @book_abbreviation = verse_hash[:book_abbreviation]
    @chapter_number = verse_hash[:chapter_number]
    @verse_number = verse_hash[:verse_number]
    @text = verse_hash[:text]
  end
end
