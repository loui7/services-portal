class ServicesController < ApplicationController
  def index
    @services = Service.where(completed_on: nil)
  end
end
