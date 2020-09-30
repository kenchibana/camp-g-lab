class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|

      t.timestamps
    end
  end
end
