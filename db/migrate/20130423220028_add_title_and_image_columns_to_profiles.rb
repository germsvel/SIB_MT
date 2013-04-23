class AddTitleAndImageColumnsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :title, :string
    add_column :profiles, :img_url, :string
  end
end
