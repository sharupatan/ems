class ProjectsController < ApplicationController
  layout 'admin'
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(params.require(:project).permit!)
    if project.save
      redirect_to '/projects'
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params.require(:id))
  end

  def update
    project = Project.find(params.require(:id))
    update_status = project.update(params.require(:project).permit!)
    puts update_status
    if update_status
      redirect_to '/projects'
    else
      render :edit
    end
  end

  def destroy
    Project.find(params.require(:id)).destroy
    redirect_to '/projects'
  end
end
