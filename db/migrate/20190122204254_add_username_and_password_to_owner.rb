class AddUsernameAndPasswordToOwner < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :username, :string
    add_column :owners, :password_digest, :string
  end
end
