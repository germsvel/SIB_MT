class ProfilesController < ApplicationController

layout 'home', :only => :index 


def index
  @profiles = Profile.all
end

def show
  @profile = Profile.find(params[:id])
  name = @profile.name
  @units = Unit.all
  # @profile.for_agent(name)
  @description = description(name)
  @market_data = market_data(name)
  @platform_story = platform_story(name)
  @case_study = case_study(name)
  @faqs = []

end


private

def market_data(profile_name)
  return "market_data_cmo" if profile_name == 'CMO'
  return "market_data_ca" if profile_name == 'Creative Agency'
  return "market_data_ss" if profile_name == 'Social Strategist'
end

def description(profile_name)
  return "description_cmo" if profile_name == 'CMO'
  return "description_ca" if profile_name == 'Creative Agency'
  return "description_ss" if profile_name == 'Social Strategist'
end

def platform_story(profile_name)
  return "platform_story_cmo" if profile_name == 'CMO'
  return "platform_story_ca" if profile_name == 'Creative Agency'
  return "platform_story_ss" if profile_name == 'Social Strategist'
end

def case_study(profile_name)
  return "case_study_cmo" if profile_name == 'CMO'
  return "case_study_ca" if profile_name == 'Creative Agency'
  return "case_study_ss" if profile_name == 'Social Strategist'
end

end
