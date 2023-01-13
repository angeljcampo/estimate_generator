class EstimateStepsController < ApplicationController
  # before_action :set_estimate
  include Wicked::Wizard

  require 'sendgrid-ruby'
  include SendGrid

  steps :step_one, :step_two

  def show
    @plans = Plan.all
    @basic_plan = Plan.find_by(name:'Práctico')
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
    Rails.logger.info "antes del correo-----+++"
    EstimateNotifierMailer.send_estimate_email(@estimate_form).deliver
    # contact_client(@estimate_form)
    Rails.logger.info "-------<Despues del correo"
  end


# ----------------------esta es una prueba

def contact_client(estimate)
  from = SendGrid::Email.new(email: 'kimera.acces@gmail.com')
  to = SendGrid::Email.new(email: 'kimera.acces@gmail.com')
  subject = "Consulta de Cliente #{estimate.client_name}"
  content = SendGrid::Content.new(type: 'text/plain', value: "#{estimate.client_phone}. Responder correo a #{estimate.client_email}")
  mail = SendGrid::Mail.new(from, subject, to, content) 
  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
end



  private 

  def set_estimate
    @estimate_form = current_estimate
  end

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "¡Tu cotización ha sido creada, próximamente llegará un email con los detalles!." 
  end

  def estimate_params
    params.require(:estimate).permit(:service_id, :plan_id, :client_name, :client_lastname, :client_phone, :client_email, :is_velatorio, :commune_id, :destino_repatriacion)
  end

end
