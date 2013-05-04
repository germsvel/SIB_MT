class Faq < ActiveRecord::Base
  attr_accessible :question, :answer

  validates :question, :answer, :presence => true

  #change to has_many. The rest should work fine for the self join
  has_one :questions, :class_name => "Faq", :foreign_key => "question_id"
  belongs_to :answers, :class_name => "Faq"

end
