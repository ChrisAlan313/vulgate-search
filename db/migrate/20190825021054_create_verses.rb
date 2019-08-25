class CreateVerses < ActiveRecord::Migration[6.0]
  def change
    create_table :verses do |t|
      t.string :book
      t.integer :chapter
      t.integer :number
      t.string :text

      t.timestamps
    end
  end
end
