class MarketDataController < ApplicationController
  
  before_filter :set_profile


  def edit
    @market_datum = MarketDatum.find(params[:id])
  end

  def update
    @market_datum = MarketDatum.find(params[:id])

    if @market_datum.update_attributes(params[:market_datum])
      flash[:notice] = "Thank you for updating the market data"
      redirect_to profile_path(params[:profile_id])
    else
      render 'edit'
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

end
