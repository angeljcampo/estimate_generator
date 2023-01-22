class EstimateMailer < ApplicationMailer

  def send_estimate_email
    @estimate = params[:estimate]
    Rails.logger.info "Estimateee#{@estimate.inspect}"
    
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string(
        'estimates/estimate_pdf.html.erb')
    )
    save_path = Rails.root.join('public/pdfs', "cotizacion_#{@estimate.id}.pdf")
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    
    attachments['presupuesto.pdf'] = File.read(save_path)
    mail( :to => @estimate.client_email,
    :subject => '¡Gracias por cotizar con Funeraria Ivan Martinez!' )

    File.delete(save_path) if File.exist?(save_path)
  end
end
