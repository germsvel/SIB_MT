class Faq < ActiveRecord::Base
  attr_accessible :question, :faq_answers_attributes

  validates :question, :presence => true

  has_many :faq_answers, :inverse_of => :faq

  accepts_nested_attributes_for :faq_answers, :allow_destroy => true

end
