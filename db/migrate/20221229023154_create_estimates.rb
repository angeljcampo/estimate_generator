class CreateEstimates < ActiveRecord::Migration[6.1]
  def change
    create_table :estimates do |t|
      t.integer :service_id
      t.integer :plan_id
      t.string :client_name
      t.string :client_lastname
      t.string :client_phone
      t.string :client_email

      t.timestamps
    end
  end
end
