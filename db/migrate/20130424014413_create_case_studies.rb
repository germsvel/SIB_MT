class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.references :profile
      t.string :title
      t.text :description
      t.string :img_url
      t.timestamps
    end
  end
end
