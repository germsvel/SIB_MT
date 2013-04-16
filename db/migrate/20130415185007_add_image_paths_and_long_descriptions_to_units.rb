class AddImagePathsAndLongDescriptionsToUnits < ActiveRecord::Migration
  def change
    add_column :units, :image_path, :string
    add_column :units, :long_description, :text
    remove_column :units, :cmo
    remove_column :units, :creative_agency
    remove_column :units, :social_strategist
    remove_column :units, :dite_discovery
    remove_column :units, :dite_interaction
    remove_column :units, :dite_transaction
    remove_column :units, :dite_endorsement
  end
end
