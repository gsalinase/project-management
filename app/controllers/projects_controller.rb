class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :dashboard
  def new 
  end

  def create
    @project = Project.new(name: params[:name], description: params[:description], start: params[:start], finish: params[:finish], state: params[:state])
    @project.save
  end

  def dashboard
    if params[:search].present?
      @projects = Project.where('state = ?', params[:search])
    else
      @projects = Project.all
    end
  end
end
