class EstimateStepsController < ApplicationController
  # before_action :set_estimate
  include Wicked::Wizard
  steps :step_one, :step_two

  def show
    @plans = Plan.all
    @estimate_form = current_estimate

    case step
    when :step_one
      skip_step if @estimate_form.destino_repatriacion.present?
    end
      render_wizard 
  end

  def update
    @estimate_form = current_estimate
    @estimate_form.assign_attributes(estimate_params)

    redirect_to_finish_wizard
  end

  private 

  def set_estimate
    @estimate_form = current_estimate
  end

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Gracias por proveernos tu información, nos contactaremos contigo lo antes posible."
  end

  def estimate_params
    params.require(:estimate).permit(:service_id, :plan_id, :client_name, :client_lastname, :client_phone, :client_email, :is_velatorio, :commune_id, :destino_repatriacion)
  end

end
