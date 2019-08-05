module MyServicesHelper

    def my_services
        return my_service_pending_proposals = Service.where(user: current_user)
    end
end