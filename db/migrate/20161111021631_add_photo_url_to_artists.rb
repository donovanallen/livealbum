class AddPhotoUrlToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :photo_url, :string
  end
end
