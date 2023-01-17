class Plan < ApplicationRecord

  has_many :estimates

  #enums
  enum cofre: {'Valparaiso' => 1, 'Coyhaique'=> 2, 'Torres del paine' => 3}
  enum capilla: {'Torneada eléctrica' => 1, 'Torneada cirios' => 2, 'Raulí cirios' => 3}
  enum cubre_urnas: {Pequeño: 1, Mediano: 2 ,Grande: 3, Premium: 4}
  enum cafeteria: {Básico: 1, Estandar: 2, VIP: 3}
  enum tipo_de_anfora: {Tradicional: 1, Elección: 2}
end
