class FaqAnswer < ActiveRecord::Base
  attr_accessible :answer, :faq_id

  belongs_to :faq, :inverse_of => :faq_answers

end