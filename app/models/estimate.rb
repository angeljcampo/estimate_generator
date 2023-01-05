class Estimate < ApplicationRecord
  belongs_to :plan, optional: true
  belongs_to :service, optional: true
  belongs_to :commune, optional: true

    CREMACION = 'Cremación'
    INHUMACION = 'Inhumación'
    REPATRIACION = 'Traslado o repatriación'
    OTRAS_OPCIONES = 'Otras opciones'


    # validates_presence_of :plan_id, message: "Debe seleccionar un plan."
    # validates_presence_of :client_name, message: "Debe ingresar su nombre."
    # validates_presence_of :client_lastname, message: "Debe ingresar su apellido."
    # validates_presence_of :client_phone, message: "Debe ingresar su número de teléfono."
    # validates_presence_of :client_email, message: "Debe ingresar su email."
    # validates_presence_of :is_velatorio, message: "Debe seleccionar si desea velatorio o no."
    # validates_presence_of :commune_id, message: "Debe seleccionar una comuna"
end
