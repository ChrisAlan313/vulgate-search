class BibleParser
  def self.parse_line(line)
    parsed_line = line.split('|')

    {
      book_abbreviation: parsed_line[0],
      chapter_number: parsed_line[1].to_i,
      verse_number: parsed_line[2].to_i,
      text: parsed_line[3]
    }
  end
end
