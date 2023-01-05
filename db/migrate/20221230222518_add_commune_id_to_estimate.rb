class AddCommuneIdToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :commune_id, :integer
  end
end
