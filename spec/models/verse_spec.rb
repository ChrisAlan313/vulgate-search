require 'rails_helper'

RSpec.describe Verse, type: :model do
  before do
    Verse.new({
      book_abbreviation: 'Gen',
      chapter_number: 1,
      verse_number: 1,
      text: 'In principio creavit Deus c&#230;lum et terram.'
    }).save
  end

  describe '#new' do
    context 'valid' do
      it 'saves book abbreviation' do
        expect(Verse.last.book_abbreviation).to eq('Gen')
      end

      it 'saves chapter number' do
        expect(Verse.last.chapter_number).to eq(1)
      end

      it 'saves verse number' do
        expect(Verse.last.verse_number).to eq(1)
      end

      it 'saves text' do
        expect(Verse.last.text).to eq(
          'In principio creavit Deus c&#230;lum et terram.'
        )
      end
    end
  end

  describe '#to_s' do
    context 'valid' do
      it 'returns text' do
        expect(Verse.last.to_s).to eq(
          'In principio creavit Deus c&#230;lum et terram.'
        )
      end
    end
  end
end
