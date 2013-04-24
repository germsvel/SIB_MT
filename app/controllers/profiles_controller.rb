class ProfilesController < ApplicationController



def show
  @profile = Profile.find(params[:id])
  @units = Unit.all
  @faqs = Faq.all
  @misc_resources = MiscResource.all
end

def edit
  @profile = Profile.find(params[:id])
end


def update
  @profile = Profile.find(params[:id])

  if @profile.update_attributes(params[:profile])
    flash[:notice] = "Thank you for updating the profile"
    redirect_to profile_path(@profile)
  else
    render 'edit'
  end
end


end
