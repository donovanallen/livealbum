class AddPhotoUrlToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :photo_url, :string
  end
end
