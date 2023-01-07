# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SEED PARA SERVICIOS

# services = ["Cremación", "Inhumación", "Traslado o repatriación","Otras opciones"]

# services.each do |service|
#   Service.create!(name: service, other_options: service == "Otras opciones" ? true : false)
# end


#SEED PARA COMUNAS

# Commune.find_or_create_by(name: 'Valparaíso',           region: 'V Región')
# Commune.find_or_create_by(name: 'Casablanca',           region: 'V Región')
# Commune.find_or_create_by(name: 'Concón',               region: 'V Región')
# Commune.find_or_create_by(name: 'Juan Fernández',       region: 'V Región')
# Commune.find_or_create_by(name: 'Puchuncaví',           region: 'V Región')
# Commune.find_or_create_by(name: 'Quintero',             region: 'V Región')
# Commune.find_or_create_by(name: 'Viña del Mar',         region: 'V Región')
# Commune.find_or_create_by(name: 'Isla de Pascua',       region: 'V Región')
# Commune.find_or_create_by(name: 'Los Andes',            region: 'V Región')
# Commune.find_or_create_by(name: 'Calle Larga',          region: 'V Región')
# Commune.find_or_create_by(name: 'Rinconada',            region: 'V Región')
# Commune.find_or_create_by(name: 'San Esteban',          region: 'V Región')
# Commune.find_or_create_by(name: 'La Ligua',             region: 'V Región')
# Commune.find_or_create_by(name: 'Cabildo',              region: 'V Región')
# Commune.find_or_create_by(name: 'Papudo',               region: 'V Región')
# Commune.find_or_create_by(name: 'Petorca',              region: 'V Región')
# Commune.find_or_create_by(name: 'Zapallar',             region: 'V Región')
# Commune.find_or_create_by(name: 'Quillota',             region: 'V Región')
# Commune.find_or_create_by(name: 'Calera',               region: 'V Región')
# Commune.find_or_create_by(name: 'Hijuelas',             region: 'V Región')
# Commune.find_or_create_by(name: 'La Cruz',              region: 'V Región')
# Commune.find_or_create_by(name: 'Nogales',              region: 'V Región')
# Commune.find_or_create_by(name: 'San Antonio',          region: 'V Región')
# Commune.find_or_create_by(name: 'Algarrobo',            region: 'V Región')
# Commune.find_or_create_by(name: 'Cartagena',            region: 'V Región')
# Commune.find_or_create_by(name: 'El Quisco',            region: 'V Región')
# Commune.find_or_create_by(name: 'El Tabo',              region: 'V Región')
# Commune.find_or_create_by(name: 'Santo Domingo',        region: 'V Región')
# Commune.find_or_create_by(name: 'San Felipe',           region: 'V Región')
# Commune.find_or_create_by(name: 'Catemu',               region: 'V Región')
# Commune.find_or_create_by(name: 'Llaillay',             region: 'V Región')
# Commune.find_or_create_by(name: 'Panquehue',            region: 'V Región')
# Commune.find_or_create_by(name: 'Putaendo',             region: 'V Región')
# Commune.find_or_create_by(name: 'Santa María',          region: 'V Región')
# Commune.find_or_create_by(name: 'Limache',              region: 'V Región')
# Commune.find_or_create_by(name: 'Quilpué',              region: 'V Región')
# Commune.find_or_create_by(name: 'Villa Alemana',        region: 'V Región')
# Commune.find_or_create_by(name: 'Olmué',                region: 'V Región')
# Commune.find_or_create_by(name: 'Colina',               region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Lampa',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Tiltil',               region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Pirque',               region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Puente Alto',          region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'San José de Maipo',    region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Buin',                 region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Calera de Tango',      region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Paine',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'San Bernardo',         region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Alhué',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Curacaví',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'María Pinto',          region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Melipilla',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'San Pedro',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Cerrillos',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Cerro Navia',          region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Conchalí',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'El Bosque',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Estación Central',     region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Huechuraba',           region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Independencia',        region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'La Cisterna',          region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'La Granja',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'La Florida',           region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'La Pintana',           region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'La Reina',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Las Condes',           region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Lo Barnechea',         region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Lo Espejo',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Lo Prado',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Macul',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Maipú',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Ñuñoa',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Pedro Aguirre Cerda',  region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Peñalolén',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Providencia',          region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Pudahuel',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Quilicura',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Quinta Normal',        region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Recoleta',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Renca',                region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'San Miguel',           region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'San Joaquín',          region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'San Ramón',            region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Santiago',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Vitacura',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'El Monte',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Isla de Maipo',        region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Padre Hurtado',        region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Peñaflor',             region: 'Región Metropolitana')
# Commune.find_or_create_by(name: 'Talagante',            region: 'Región Metropolitana')

#SEED PARA PLANES------------------------------------

Plan.create!(
  name: "Práctico",
  feretro: 1,  
  velatorio: "Estándar", 
  ceremonia_musicos: "Ceremonia", 
  flores_arreglos: "1 corona estándar", 
  cremacion: true, 
  certificacion_doc: true, 
  urna: "Ecológica", 
  joya: "", 
  esquela: false)
  
Plan.create!(
  name: "Estándar",
  feretro: 2,  
  velatorio: "Estándar", 
  ceremonia_musicos: "Ceremonia", 
  flores_arreglos: "2 coronas + 1 centro de flores estándar", 
  cremacion: true, 
  certificacion_doc: true, 
  urna: "Ecológica / Conservación gama estándar", 
  joya: "", 
  esquela: false)

Plan.create!(
  name: "Memorial",
  feretro: 3,  
  velatorio: "Noble", 
  ceremonia_musicos: "Ceremonia", 
  flores_arreglos: "2 coronas + 1 centro de flores gama media", 
  cremacion: true, 
  certificacion_doc: true, 
  urna: "Ecológica / Conservación gama media-alta", 
  joya: "1 joya con la huella digital del difunto", 
  esquela: false)

Plan.create!(
  name: "Senator",
  feretro: 4,  
  velatorio: "Noble", 
  ceremonia_musicos: "Ceremonia + 2 músicos", 
  flores_arreglos: "3 coronas + 1 centro gama media-alta", 
  cremacion: true, 
  certificacion_doc: true, 
  urna: "Ecológica / Conservación gama alta", 
  joya: "2 joyas relicario para conservar cenizas
  1 joya con la huella digital del difunto", 
  esquela: false)

Plan.create!(
  name: "Ambassador",
  feretro: 4,  
  velatorio: "Noble", 
  ceremonia_musicos: "Ceremonia + 3 músicos", 
  flores_arreglos: "3 coronas + 1 centro gama media-alta", 
  cremacion: true, 
  certificacion_doc: true, 
  urna: "Ecológica / Conservación gama alta", 
  joya: "2 joyas relicario para conservar cenizas
  1 joya con la huella digital del difunto", 
  esquela: true)
  
