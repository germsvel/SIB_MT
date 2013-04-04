class Unit < ActiveRecord::Base
  attr_accessible :name, :description, :unit_type, 
        :cmo, :creative_agency, :social_strategist, 
        :dite_discovery, :dite_interaction, :dite_transaction, :dite_endorsement
end
