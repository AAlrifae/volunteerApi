class AddIsOrganizationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isOrganization, :boolean
  end
end
