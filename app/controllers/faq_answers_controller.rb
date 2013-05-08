class FaqAnswersController < ApplicationController

  def destroy
    @faq_answer = FaqAnswer.find(params[:id])
    @faq_answer.destroy
    flash[:notice] = "Thank you for cleaning up the knowledge database"
    redirect_to root_path
  end
end
