class Unit < ActiveRecord::Base
  attr_accessible :name, :description, :unit_type, 
        :long_description, :image_path, :thumbnail_path

  validates :name, :description, :unit_type, :image_path, :thumbnail_path, :presence => true 
end
