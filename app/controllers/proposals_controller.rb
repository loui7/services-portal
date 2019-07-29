class ProposalsController < ApplicationController
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
  end
end
