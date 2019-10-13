class BibleParser
  VULGATE_BIBLE_FILE = Rails.root.join('lib', 'vuldat.txt')

  def self.run
    parsed_lines = File.readlines(VULGATE_BIBLE_FILE).map do |line|
      BibleParser.parse_line(line)
    end

    verses = parsed_lines.map do |line|
      new_verse = Verse.new(line)
    end

    verses.each { |verse| verse.save }
  end

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
