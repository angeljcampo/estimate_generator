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
    @estimate_form = Estimate.new(estimate_params)
    if @estimate_form.save
      if params[:from_options].present?
          redirect_to root_path, notice: "Gracias por proveernos tu información, nos contactaremos contigo lo antes posible."
          # EstimateMailer.with(estimate: @estimate_form).send_estimate_email.deliver_later
      else
          redirect_to estimate_estimate_steps_path(estimate_id: @estimate_form.id, service_id: params[:service_id])
      end
    end
  end

  private 

  def estimate_params
    params.require(:estimate).permit(:service_id, :plan_id, :client_name, :client_lastname, :client_phone, :client_email, :is_velatorio, :commune_id, :origen_repatriacion, :destino_repatriacion)
  end
end
