class AddIsVelatorio < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :is_velatorio, :boolean, default: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
