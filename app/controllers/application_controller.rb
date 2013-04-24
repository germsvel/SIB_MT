class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

end
