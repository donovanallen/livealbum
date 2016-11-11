class AddVideoUrlToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :video_url, :string
  end
end
