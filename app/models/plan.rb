class Plan < ApplicationRecord

  has_many :estimates

  #enums
  enum cofre: {valparaiso: 1, coyhaique: 2, torres_del_paine: 3}
  enum capilla: {torneada_eléctrica: 1, torneada_cirios: 2, raulí_cirios: 3}
  enum cubre_urnas: {pequeño: 1, mediano: 2 ,grande: 3, premiun: 4}
  enum cafeteria: {basico: 1, estandar: 2, vip: 3}
  enum tipo_de_anfora: {tradicional: 1, eleccion: 2}
end
