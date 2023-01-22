class AddPrecioToPlan < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :precio, :integer
  end
end
