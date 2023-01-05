class ApplicationController < ActionController::Base

  helper_method :current_estimate

  def current_estimate
    Estimate.find(params[:estimate_id])
  end

end
