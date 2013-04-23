class MiscResource < ActiveRecord::Base
  attr_accessible :description, :link_url

  validates :description, :link_url, :presence => true
end
