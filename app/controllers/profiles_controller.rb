class ProfilesController < ApplicationController

layout 'home', :only => :index 



def show
  @profile = Profile.find(params[:id])
  name = @profile.name
  @units = Unit.all



  @description = description(name)
  @case_study = case_study(name)
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

private



def description(profile_name)
  return "description_cmo" if profile_name == 'CMO'
  return "description_ca" if profile_name == 'Creative Agency'
  return "description_ss" if profile_name == 'Social Strategist'
end

def case_study(profile_name)
  return "case_study_cmo" if profile_name == 'CMO'
  return "case_study_ca" if profile_name == 'Creative Agency'
  return "case_study_ss" if profile_name == 'Social Strategist'
end

end
