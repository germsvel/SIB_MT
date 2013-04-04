class FaqsController < ApplicationController

  def index
    @faqs = Faq.all
  end

  def show
    @faq = Faq.find(params[:id])
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(params[:faq])

    if @faq.save
      flash[:notice] = "Thanks you for adding to our knowledge base"
      redirect_to faqs_path
    else
      render 'new'
    end
  end

  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    flash[:notice] = "What was that? I can't remember. You just destroyed info from our knowledge base"
  end

end
