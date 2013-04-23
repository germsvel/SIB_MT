class AddQuestionsToFaqs < ActiveRecord::Migration
  def change
    add_column :faqs, :question, :string
    add_column :faqs, :answer, :text
    add_column :faqs, :question_id, :integer
  end
end
