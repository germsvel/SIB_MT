class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :type
      t.text :description
      t.boolean :cmo
      t.boolean :creative_agency
      t.boolean :social_strategist
      t.boolean :discovery
      t.boolean :interaction
      t.boolean :transaction
      t.boolean :endorsement

      t.timestamps
    end
  end
end
