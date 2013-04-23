class MarketDataController < ApplicationController
  def edit
    @market_datum = MarketDatum.find(params[:id])
    @profile = Profile.find(params[:profile_id])
  end

  def update
    @market_datum = MarketDatum.find(params[:id])
    @profile = Profile.find(params[:profile_id])

    if @market_datum.update_attributes(params[:market_datum])
      flash[:notice] = "Thank you for updating the market data"
      redirect_to root_path
    else
      render 'edit'
    end
  end
end
