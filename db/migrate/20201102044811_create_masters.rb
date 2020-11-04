class CreateMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :masters do |t|
      t.string :login_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
