class FaqsController < ApplicationController

  # def index
  #   @faqs = Faq.all
  # end

  def new
    @faq = Faq.new
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

  def edit
    @faq = Faq.find(params[:id])
  end

  def update
    @faq = Faq.find(params[:id])

    if @faq.update_attributes(params[:faq])
      flash[:notice] = "Thank you for updating our knowledge database"
      redirect_to root_path
    else
      render 'edit'
    end
  end


  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    flash[:notice] = "You have deleted a question"
    redirect_to root_path
  end


end
