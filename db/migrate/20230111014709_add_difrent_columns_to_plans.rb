class AddDifrentColumnsToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :cofre, :integer
    add_column :plans, :capilla, :integer
    add_column :plans, :cruz, :boolean, default: false
    add_column :plans, :sala_velatoria, :boolean, default: false
    add_column :plans, :flores, :boolean, default: false
    add_column :plans, :libro_de_condolencias, :boolean, default: false
    add_column :plans, :tarjeta_de_condolencias, :boolean, default: false
    add_column :plans, :cubre_urnas, :integer
    add_column :plans, :pie_de_urnas, :boolean, default: false
    add_column :plans, :medico, :boolean, default: false
    add_column :plans, :inscripcion_registro_civil, :boolean, default: false
    add_column :plans, :tramites_legales, :boolean, default: false
    add_column :plans, :carroza_panoramica, :integer
    add_column :plans, :van_de_acompanamiento, :integer
    add_column :plans, :cinta_de_identificacion, :boolean, default: false
    add_column :plans, :video_de_homenaje, :boolean, default: false
    add_column :plans, :cafeteria, :integer
    add_column :plans, :obituario_virtual, :boolean, default: false
    add_column :plans, :obituario_mercucio, :boolean, default: false
    add_column :plans, :homenaje_presencial, :boolean, default: false
    add_column :plans, :tipo_de_anfora, :integer
    remove_column :plans, :flores_arreglos, :string
  end
end
