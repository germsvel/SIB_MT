class Unit < ActiveRecord::Base
  attr_accessible :name, :description, :unit_type, 
        :long_description, :image_path, :thumbnail_path
end
