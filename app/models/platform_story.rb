class PlatformStory < ActiveRecord::Base
  attr_accessible :title, :description , :profile_id

  belongs_to :profile, :inverse_of => :platform_stories

  validates :title, :description, :profile_id, :presence => true
end
