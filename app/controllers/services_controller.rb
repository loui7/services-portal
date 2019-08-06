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
    @accepted_proposal = nil
    if @service.user != current_user
      @my_proposal = Proposal.where(user: current_user, service: @service).first
    else
      @accepted_proposal = Proposal.where(service: @service, accepted: true).first
    end
  end

  def edit
    @service = Service.find(params[:service][:id])
  end

  def update
    service = Service.find(params[:id])
    # Cancel destruction if accepted proposal exists
    if Proposal.where(service: service, accepted: true).count > 0
      flash[:alert] = "Can't modify a service after accepting a proposal"
      redirect_to service_path(service.id)
    end
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
    # Cancel destruction if accepted proposal exists
    if Proposal.where(service: service, accepted: true).count > 0
      flash[:alert] = "Can't remove a service after accepting a proposal"
      redirect_to service_path(service.id)
    end
    service.destroy
    flash[:alert] = "Job #{service.title} has been removed"
    redirect_to services_path
  end

  def my_services
    @services = Service.where(user: current_user)
  end

  def accept_proposal
    Proposal.where(accepted: nil).where.not(id: params[:id]).each { |p|
      p.accepted = false
      p.save
    }

    proposal = Proposal.find(params[:id])
    proposal.accepted = true
    if proposal.save
      flash[:alert] = "#{proposal.user.name}'s proposal has been accepted"
      redirect_to service_path(proposal.service.id)
    else
      flash[:alert] = service.errors.full_messages[0]
      render 'show'
    end
  end

  def complete_service
    service = Service.find(params[:id])
    service.completed_on = DateTime.now
    if service.save
      flash[:alert] = "Job #{service.title} has been completed"
      redirect_to service_path(service.id)
    else
      flash[:alert] = service.errors.full_messages[0]
      redirect_to service_path(service.id)
    end
  end

  def job_paid
    service = Service.find(params[:service_id])
    service.paid_on = DateTime.now
    service.save
  end
end
