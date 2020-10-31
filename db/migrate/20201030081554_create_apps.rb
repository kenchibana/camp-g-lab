class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :user_id
      t.string :article_id
      t.string :gear_id
      t.string :campsite_id

      t.timestamps
    end
  end
end
