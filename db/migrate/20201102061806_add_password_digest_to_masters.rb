class AddPasswordDigestToMasters < ActiveRecord::Migration[5.2]
  def change
    add_column :masters, :password_digest, :string
  end
end
