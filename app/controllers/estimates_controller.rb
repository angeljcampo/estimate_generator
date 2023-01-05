class EstimatesController < ApplicationController
  def index
    @services = Service.all
  end
  
  def new
    @estimate_form = Estimate.new
    @communes = Commune.all
    params[:is_velatorio] = true unless params[:is_velatorio].present?
  end

  def create
    Rails.logger.info "PARAMSSSS #{params.inspect}"
    Rails.logger.info "FROMMMM #{params[:from_options]}"
    @estimate_form = Estimate.new(estimate_params)
    if @estimate_form.save
      if params[:from_options].present?
        redirect_to root_path, notice: "¡Tu cotización ha sido creada, próximamente llegará un email con los detalles!."
      else
      redirect_to estimate_estimate_steps_path(estimate_id: @estimate_form.id, service_id: params[:service_id])
      end
    else
    end
  end

  private 

  def estimate_params
    params.require(:estimate).permit(:service_id, :plan_id, :client_name, :client_lastname, :client_phone, :client_email, :is_velatorio, :commune_id, :destino_repatriacion)
  end
end
