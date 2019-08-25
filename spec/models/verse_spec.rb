require 'rails_helper'

RSpec.describe Verse, type: :model do
  describe '#initialize' do
    context 'valid' do
      line = 'Gen|1|1|In principio creavit Deus c&#230;lum et terram.'
      subject(:verse) { Verse.new(line) }


      it 'saves book abbreviation' do
        expect(verse.book_abbreviation).to eq('Gen')
      end

      it 'saves chapter number' do
        expect(verse.chapter_number).to eq(1)
      end

      it 'saves verse number' do
        expect(verse.verse_number).to eq(1)
      end

      it 'saves text' do
        expect(verse.text).to eq(
          'In principio creavit Deus c&#230;lum et terram.'
        )
      end
    end
  end
end
