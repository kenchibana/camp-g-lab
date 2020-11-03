class AddAdminToMaster < ActiveRecord::Migration[5.2]
  def change
    add_column :masters, :admin, :boolean, default: false
  end
end
