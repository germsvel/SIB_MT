class CreateMarketData < ActiveRecord::Migration
  def change
    create_table :market_data do |t|
      t.references :profile
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
