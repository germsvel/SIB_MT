class Faq < ActiveRecord::Base
  attr_accessible :question, :answer

  validates :question, :answer, :presence => true

  has_one :questions, :class_name => "Faq", :foreign_key => "question_id"
  belongs_to :answers, :class_name => "Faq"

end
