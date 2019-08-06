module MyProposalsHelper

    def my_proposals
        return Proposal.where(user: current_user)
    end
end