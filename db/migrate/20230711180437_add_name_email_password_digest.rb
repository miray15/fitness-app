class AddNameEmailPasswordDigest < ActiveRecord::Migration[7.0]
  def change

add_column :users, :email, :text
add_column :users, :password_digest, :text

  end
end
