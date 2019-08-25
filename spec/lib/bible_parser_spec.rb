require 'rails_helper'

RSpec.describe BibleParser do
  describe '.parsed_line' do
    context 'valid' do
      subject(:parsed_line) {
        BibleParser.parse_line(
          'Ti1|4|11|Pr&#230;cipe h&#230;c, et doce.'
        )
      }


      it 'returns book abbreviation' do
        expect(parsed_line[:book_abbreviation]).to eq('Ti1')
      end

      it 'saves chapter number' do
        expect(parsed_line[:chapter_number]).to eq(4)
      end

      it 'saves verse number' do
        expect(parsed_line[:verse_number]).to eq(11)
      end

      it 'saves text' do
        expect(parsed_line[:text]).to eq(
          'Pr&#230;cipe h&#230;c, et doce.'
        )
      end
    end
  end
end
