class CreateShowlists < ActiveRecord::Migration[5.0]
  def change
    create_table :showlists do |t|
      t.string :name
      t.integer :numberOfShows
      t.integer :lengthMin
      t.references :show, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
