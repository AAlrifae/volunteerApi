class RemovephoneNumberFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :phoneNumber
  end

  def down
    add_column :users, :phoneNumber, :integer
  end
end
