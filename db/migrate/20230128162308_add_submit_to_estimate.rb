class AddSubmitToEstimate < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :submit, :boolean, default: false
  end
end
