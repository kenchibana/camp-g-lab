class CreateMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :masters do |t|
      t.integer :login_id
      t.integer :password
      t.timestamps
    end
  end
end
