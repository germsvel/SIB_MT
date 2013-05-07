class FaqAnswer < ActiveRecord::Base
  attr_accessible :answer, :faqs_id

  belongs_to :faq, :inverse_of => :faq_answers

end