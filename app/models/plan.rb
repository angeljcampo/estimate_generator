class Plan < ApplicationRecord

  belongs_to :estimate

  #enums
  enum feretro: {básico: 1, estandar: 2, gama_media_alta: 3, gama_alta: 4}
  
end
