class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :year
      t.references :album, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
