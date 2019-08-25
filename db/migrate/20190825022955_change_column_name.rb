class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :verses, :book, :book_abbreviation
    rename_column :verses, :chapter, :chapter_number
    rename_column :verses, :number, :verse_number
  end
end
