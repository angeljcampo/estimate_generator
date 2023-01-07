class AddDestinoRepatriacionToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :destino_repatriacion, :integer
  end
end
