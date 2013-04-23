class MiscResourcesController < ApplicationController
  def new
    @misc_resource = MiscResource.new
  end

  def create
    @misc_resource = MiscResource.new(params[:misc_resource])

    if @misc_resource.save
      flash[:notice] = "Thank you for adding to the pool of resources"
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def destroy
    @misc = MiscResource.find(params[:id])
    @misc.destroy
    flash[:notice] = "Thank you for cleaning up our resources"
    redirect_to root_path
  end

end
