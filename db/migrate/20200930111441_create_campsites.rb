class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
      t.string :name
      t.string :content
      t.integer :master_id
      t.timestamps
    end
  end
end
