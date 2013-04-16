class AddThumbnailsToUnits < ActiveRecord::Migration
  def change
    add_column :units, :thumbnail_path, :string
  end
end
