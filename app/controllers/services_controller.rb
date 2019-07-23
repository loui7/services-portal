class ServicesController < ApplicationController
  def index
    @services = Service.where(completed_on: nil)
  end

  def new
    @service = Service.new
  end

  def create
    service = Service.new
    service.title = params[:service][:title]
    service.description = params[:service][:description]
    service.location = params[:service][:location]
    if service.save
      flash[:alert] = "Your service has been posted"
      redirect_to services_path
    else
      flash[:alert] = service.errors.full_messages[0]
      render 'new'
    end
  end
end
