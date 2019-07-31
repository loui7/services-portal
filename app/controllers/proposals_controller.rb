class ProposalsController < ApplicationController
  before_action :authenticate_user!

  def index
    @services_with_proposals = []
    Service.where(user: current_user).find_each do |service|
      unless service.proposals.empty?
        @services_with_proposals.push(
          name: service.title,
          proposals: service.proposals
        )
      end
    end

    @submitted_proposals = Proposal.where(user: current_user)
  end

  def new
    @proposal = Proposal.new
    @service = Service.find(params[:service_id])
  end

  def create
    service = Service.find(params[:proposal][:service_id])
    proposal = service.proposals.new(
      price: (params[:proposal][:price] * 100),
      user: current_user,
      notes: params[:proposal][:notes]
    )
    if proposal.save
      flash[:alert] = "Your service has been posted"
      redirect_to proposals_path
    else
      flash[:alert] = service.errors.full_messages[0]
      render 'new'
    end
  end
end
