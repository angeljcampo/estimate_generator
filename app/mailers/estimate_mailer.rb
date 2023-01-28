class EstimateMailer < ApplicationMailer

  def send_estimate_email
    @estimate = params[:estimate]    
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string(
        :template => 'estimates/estimate_pdf.html.erb',
        page_size: 'letter'
      ), {:orientation => 'Landscape'}
    )



    save_path = Rails.root.join('public/pdfs', "cotizacion_#{@estimate.estimate_number}.pdf")
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    
    attachments['presupuesto.pdf'] = File.read(save_path)
    mail( :to => @estimate.client_email,
    :subject => '¡Gracias por cotizar con Funeraria Ivan Martinez!' )

    File.delete(save_path) if File.exist?(save_path)
  end

  def send_estimate_email_repatriacion
    @estimate = params[:estimate]    
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string(
        'estimates/estimate_pdf_repatriacion.html.erb',
        page_size: 'letter'
      )
    )
    save_path = Rails.root.join('public/pdfs', "cotizacion_#{@estimate.estimate_number}.pdf")
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    
    attachments['repatriacion.pdf'] = File.read(save_path)
    mail( :to => 'angeljcampo@gmail.com', #CAMBIAR este correo por el de la funeria
    :subject => "Cotizacion #{@estimate.client_name} #{@estimate.client_lastname} - Repatriación" )

    File.delete(save_path) if File.exist?(save_path)
  end


  def send_estimate_email_opciones
    @estimate = params[:estimate]    
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string(
        'estimates/estimate_pdf_opciones.html.erb',
        page_size: 'letter'
      )
    )
    save_path = Rails.root.join('public/pdfs', "cotizacion_#{@estimate.estimate_number}.pdf")
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    
    attachments['consulta.pdf'] = File.read(save_path)
    mail( :to => 'angeljcampo@gmail.com', #CAMBIAR por correo de la funeraria
    :subject => "Consulta #{@estimate.client_name} #{@estimate.client_lastname}" )

    File.delete(save_path) if File.exist?(save_path)
  end
end
