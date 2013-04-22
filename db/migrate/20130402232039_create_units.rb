class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :unit_type
      t.text :description
      t.text :long_description
      t.string :image_path
      t.string :thumbnail_path

      t.timestamps
    end
  end
end
