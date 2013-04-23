class MarketDatum < ActiveRecord::Base
  attr_accessible :title, :description

  belongs_to :profile

  validates :title, :description, :presence => true
end
