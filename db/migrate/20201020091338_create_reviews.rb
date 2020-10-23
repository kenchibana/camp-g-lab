class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :description
      t.string :image
      t.integer :contentable_id
      t.string :contentable_type

      t.timestamps
    end
  end
end
