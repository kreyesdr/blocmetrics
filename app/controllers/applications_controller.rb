class ApplicationsController < ApplicationController
  def index
    @application = Application.all
  end

  def show
    @application = Application.find(params[:id])
    @events = @application.event.group_by(&:name)
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new
    @application.user = current_user
    @application.name = params[:application][:name]
    @application.description = params[:application][:description]
    @application.url = params[:application][:url]

    if @application.save
      flash[:notice] = 'Application saved successfully'
      redirect_to applications_path
    else
      flash.now[:alert] = 'There was an error saving this application, contact support'
      redirect_to applications_path
    end
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    @application.name = params[:application][:name]
    @application.description = params[:application][:description]
    @application.url = params[:application][:url]

    if @application.save
      flash[:notice] = 'Application saved successfully'
      redirect_to applications_path
    else
      flash.now[:alert] = 'There was an error saving this application, contact support'
      redirect_to applications_path
    end
  end

  def destroy
    @application = Application.find(params[:id])
    if @application.destroy
      flash[:notice] = "\"#{@application.name}\" was deleted!"
      redirect_to applications_path
    else
      flash.now[:alert] = 'There was an error deleting this application'
      redirect_to applications_path
    end
  end
end

