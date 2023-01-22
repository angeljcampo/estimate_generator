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
    # save_path = Rails.root.join('public/pdfs', "cotizacion_#{@estimate_form.id}.pdf")
    # pdf = WickedPdf.new.pdf_from_string(
    #   render_to_string(
    #     :template =>'estimates/estimate_pdf.html.erb',
    #     enncoding: 'UTF-8',
    #     page_size: 'A4',
    #   )
    # )
    # File.open(save_path, 'wb') do |file|
    #   file << pdf
    # end
    EstimateMailer.with(estimate: @estimate_form).send_estimate_email.deliver_later
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
