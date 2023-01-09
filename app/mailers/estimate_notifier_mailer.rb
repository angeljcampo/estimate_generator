class EstimateNotifierMailer < ApplicationMailer

  default :from => 'no-responder@funerariaivanmartinez.com'

  def send_estimate_email(estimate)
    @estimate = estimate
    mail( :to => @estimate.client_email,
    :subject => '¡Gracias por cotizar con Funeraria Ivan Martinez!' )
  end
end
