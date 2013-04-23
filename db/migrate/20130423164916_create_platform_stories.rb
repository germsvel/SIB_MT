class CreatePlatformStories < ActiveRecord::Migration
  def change
    create_table :platform_stories do |t|

      t.timestamps
    end
  end
end
