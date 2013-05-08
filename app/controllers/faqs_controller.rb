class FaqsController < ApplicationController

  # def index
  #   @faqs = Faq.all
  # end

  def new
    @faq = Faq.new
    # @faq_answers = Faq.faq_answers.build
  end

  def create
    @faq = Faq.new(params[:faq])

    if @faq.save
      flash[:notice] = "Thank you for adding to the knowledge database"
      redirect_to root_path
    else
      render 'new'
    end
  end


  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    flash[:notice] = "You have deleted a question"
    redirect_to root_path
  end


end
