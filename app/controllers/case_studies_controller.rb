class CaseStudiesController < ApplicationController
  
  before_filter :set_profile

  def new
    @case_study = CaseStudy.new
  end

  def create
    @case_study = CaseStudy.new(params[:case_study])
    @case_study[:profile_id] = @profile.id

    if @case_study.save 
      flash[:notice] = "Thank you for adding a case study"
      redirect_to profile_path(@profile)
    else
      render 'new'
    end
  end

  def edit
    @case_study = CaseStudy.find(params[:id])
  end

  def update
    @case_study = CaseStudy.find(params[:id])

    if @case_study.update_attributes(params[:case_study])
      flash[:notice] = "Thank you for the update"
      redirect_to profile_path(@profile)
    else
      render 'edit'
    end
  end

end
