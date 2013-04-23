class CreatePlatformStories < ActiveRecord::Migration
  def change
    create_table :platform_stories do |t|
      t.references :profile
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
