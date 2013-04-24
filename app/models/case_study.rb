class CaseStudy < ActiveRecord::Base
  attr_accessible :title, :description, :img_url

  belongs_to :profile

  validates :title, :description, :img_url, :presence => true
  
end
