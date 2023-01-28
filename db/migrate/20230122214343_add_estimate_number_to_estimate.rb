class AddEstimateNumberToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :estimate_number, :string
  end
end
