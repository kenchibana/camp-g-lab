class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :contentable_id
      t.dtring :contentable_type
      t.timestamps
    end
  end
end
