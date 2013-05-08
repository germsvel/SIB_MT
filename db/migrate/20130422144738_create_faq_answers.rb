class CreateFaqAnswers < ActiveRecord::Migration
  def change
    create_table :faq_answers do |t|
      t.references :faq
      t.text :answer
      t.timestamps
    end
  end
end