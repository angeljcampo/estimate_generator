class RemoveFeretroAndVelatorioAndCeremoniaMusicosAndCertificacionDocAndUrnaAndJoyasAndEsquelaFromPlans < ActiveRecord::Migration[6.1]
  def change
    remove_column :plans, :feretro, :integer
    remove_column :plans, :velatorio, :string
    remove_column :plans, :ceremonia_musicos, :string
    remove_column :plans, :certificacion_doc, :boolean
    remove_column :plans, :urna, :string
    remove_column :plans, :joya, :string
    remove_column :plans, :esquela, :boolean
  end
end
