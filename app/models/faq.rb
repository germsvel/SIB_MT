class Faq < ActiveRecord::Base
  attr_accessible :question

  validates :question, :presence => true

  has_many :faq_answers, :inverse_of => :faq

end
