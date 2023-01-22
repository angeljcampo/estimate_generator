class AddOrigenRepatriacionToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :origen_repatriacion, :string
    change_column :estimates, :destino_repatriacion, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
