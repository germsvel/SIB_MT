class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :unit_type
      t.text :description
      t.boolean :cmo
      t.boolean :creative_agency
      t.boolean :social_strategist
      t.boolean :dite_discovery
      t.boolean :dite_interaction
      t.boolean :dite_transaction
      t.boolean :dite_endorsement

      t.timestamps
    end
  end
end
