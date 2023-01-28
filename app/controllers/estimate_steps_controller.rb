class EstimateStepsController < ApplicationController
  # before_action :set_estimate
  include Wicked::Wizard

  require 'sendgrid-ruby'
  include SendGrid

  steps :step_one, :step_two

  def show
    @plans = Plan.all
    @basic_plan = Plan.find_by(name:'Austero')
    @estimate_form = current_estimate

    case step
    when :step_one
      skip_step if @estimate_form.destino_repatriacion.present?
    end
      render_wizard 
  end

  def update
    @estimate_form = current_estimate
    @estimate_form.update(estimate_params)
    redirect_to_finish_wizard
    @estimate_form.update(estimate_number: DateTime.now.strftime('%Y%m%d%H%M%S'), submit: true)
    if @estimate_form.plan_id.present?
      EstimateMailer.with(estimate: @estimate_form).send_estimate_email.deliver_later 
    else
      EstimateMailer.with(estimate: @estimate_form).send_estimate_email_repatriacion.deliver_later 
    end
  end



  private 

  def set_estimate
    @estimate_form = current_estimate
  end

  def redirect_to_finish_wizard
    notice_msg = @estimate_form.destino_repatriacion.present? ? "¡Tu cotización ha sido creada!, próximamente un ejecutivo se pondrá en contacto." : "¡Tu cotización ha sido creada!, próximamente llegará un email con los detalles." 
    redirect_to root_url, notice: notice_msg
  end

  def estimate_params
    params.require(:estimate).permit(:service_id, :plan_id, :client_name, :client_lastname, :client_phone, :client_email, :is_velatorio, :commune_id, :destino_repatriacion, :estimate_number, :submit)
  end

end
