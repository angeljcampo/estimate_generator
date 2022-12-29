class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.integer :feretro
      t.string :velatorio
      t.string :ceremonia_musicos
      t.string :flores_arreglos
      t.boolean :cremacion
      t.boolean :certificacion_doc
      t.string :urna
      t.string :joya
      t.boolean :esquela

      t.timestamps
    end
  end
end
