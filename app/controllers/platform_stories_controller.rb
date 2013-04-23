class PlatformStoriesController < ApplicationController

  before_filter :set_profile

  def new
    @platform_story = PlatformStory.new
  end

  def create
    @platform_story = PlatformStory.new(params[:platform_story])
    @platform_story[:profile_id] = @profile.id

    if @platform_story.save
      flash[:notice] = "Thank you for adding to our platform"
      redirect_to profile_path(@profile)
    else
      render 'new'
    end
  end
  
  def edit
    @platform_story = PlatformStory.find(params[:id])
  end

  def update
    @platform_story = PlatformStory.find(params[:id])

    if @platform_story.update_attributes(params[:platform_story])
      flash[:notice] = "Thank you for correcting that"
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
