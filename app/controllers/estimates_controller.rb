class EstimatesController < ApplicationController
  
  def index
    @services = Service.all
  end
  
  def new
    @estimate_form = Estimate.new
  end

  def create
  end
end
