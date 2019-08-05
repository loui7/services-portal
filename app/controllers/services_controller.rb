class ServicesController < ApplicationController
  before_action :authenticate_user!

  def index
    @services = Service.where(completed_on: nil).where.not(user: current_user)
  end

  def new
    @service = Service.new
  end

  def create
    service = Service.new
    service.user = current_user
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

  def show
    @service = Service.find(params[:id])
    @my_proposal = nil
    if @service.user != current_user
      @my_proposal = Proposal.where(user: current_user, service: @service).first
    end
  end

  def edit
    @service = Service.find(params[:service][:id])
  end

  def update
    service = Service.find(params[:id])
    service.title = params[:service][:title]
    service.description = params[:service][:description]
    service.location = params[:service][:location]
    if service.save
      flash[:alert] = "Job #{service.title} has been updated"
      redirect_to service_path(service.id)
    else
      flash[:alert] = service.errors.full_messages[0]
      render 'edit'
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    flash[:alert] = "Job #{service.title} has been removed"
    redirect_to services_path
  end

  def my_services
    @services = Service.where(user: current_user)
  end
end
