class ProfilesController < ApplicationController

layout 'home', :only => :index 


def index
  @profiles = Profile.all
end

def show
  @profile = Profile.find(params[:id])
  @units = @profile.for_agent(@profile.name)
end

end
