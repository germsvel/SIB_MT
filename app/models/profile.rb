class Profile < ActiveRecord::Base
  attr_accessible :name, :description, :title, :img_url

  has_many :market_data
  has_many :platform_stories
  has_many :case_studies

  scope :for_cmo, where(:cmo => true) 
  scope :for_ss, where(:social_strategist => true)
  scope :for_ca, where(:creative_agency => true)


  def for_agent(agent)
    if agent == 'cmo'
      return Unit.for_cmo
    elsif agent == "social strategist"
      return Unit.for_ss
    elsif agent == "creative agency"
      return Unit.for_ca
    else
      Unit.all
    end
  end


end
