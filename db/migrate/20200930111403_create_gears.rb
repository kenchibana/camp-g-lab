class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :name
      t.string :content
      t.string :image
      t.integer :master_id
      t.timestamps
    end
  end
end
