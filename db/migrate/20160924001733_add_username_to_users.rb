class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :address, :string
    add_column :users, :phone, :integer
    add_column :users, :is_female, :boolean, default: false
  end
end
