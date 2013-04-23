class CreateMiscResources < ActiveRecord::Migration
  def change
    create_table :misc_resources do |t|
      t.text :description
      t.text :link_url
      t.timestamps
    end
  end
end
