class UnitsController < ApplicationController


  def index
    @units = Unit.all
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(params[:unit])

    if @unit.save 
      flash[:notice] = "You have successfully created a new unit"
      redirect_to units_path
    else
      render 'new'
    end

  end

  def show
    @unit = Unit.find(params[:id])
  end

  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    flash[:notice] = "You have successfully deleted a unit"
    redirect_to units_path
  end
  
end
