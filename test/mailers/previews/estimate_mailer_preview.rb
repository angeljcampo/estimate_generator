# Preview all emails at http://localhost:3000/rails/mailers/estimate_mailer
class EstimateMailerPreview < ActionMailer::Preview

  def send_estimate_email
    EstimateMailer.with(estimate: Estimate.last).send_estimate_email
  end
  
  def send_estimate_email_repatriacion
    EstimateMailer.with(estimate: Estimate.where.not(origen_repatriacion: nil).last).send_estimate_email_repatriacion
  end

  def send_estimate_email_opciones
    EstimateMailer.with(estimate: Estimate.find_by(origen_repatriacion: nil, plan_id: nil)).send_estimate_email_opciones
  end

end
