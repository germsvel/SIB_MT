class MarketDatum < ActiveRecord::Base
  attr_accessible :title, :description, :profile_id

  belongs_to :profile, :inverse_of => :market_data

  validates :title, :description, :profile_id, :presence => true
end
