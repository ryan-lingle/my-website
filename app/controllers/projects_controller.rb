class ProjectsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show ]

  def index
    @projects = Project.all
  end

  def dash
    @project = Project.new
    @projects = Project.all
    render layout: "admin"
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_projects_path
    else
      @projects = Project.all
      render 'dash', layout: 'admin'
    end
  end

  def edit
    @project = Project.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to admin_projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :image, :github_link, :website_link)
  end
end
