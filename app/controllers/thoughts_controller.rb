class ThoughtsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show ]

  def index
    @thoughts = Thought.all
  end

  def show
    @thought = Thought.find(params[:id])
  end

  def dash
    @thoughts = Thought.all
    @thought = Thought.new
    render layout: "admin"
  end

  def create
    @thought = Thought.new(thought_params)
    if @thought.save
      redirect_to admin_thoughts_path
    else
      @thoughts = Thought.all
      render 'dash', layout: 'admin'
    end
  end

  def edit
    @thought = Thought.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @thought = Thought.find(params[:id])
    @thought.update(thought_params)
    redirect_to admin_thoughts_path
  end

  def destroy
    @thought = Project.find(params[:id])
    @thought.destroy
    redirect_to admin_thoughts_path
  end

  private
  def thought_params
    params.require(:thought).permit(:title, :content, :description, :medium_link, :image)
  end
end
