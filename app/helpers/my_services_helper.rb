module MyServicesHelper

    def my_services
        return Service.where(user: current_user)
    end
end