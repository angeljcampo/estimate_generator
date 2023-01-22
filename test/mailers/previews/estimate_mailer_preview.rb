# Preview all emails at http://localhost:3000/rails/mailers/estimate_mailer
class EstimateMailerPreview < ActionMailer::Preview

  def send_estimate_email
    EstimateMailer.with(estimate: Estimate.last).send_estimate_email
  end 

end
