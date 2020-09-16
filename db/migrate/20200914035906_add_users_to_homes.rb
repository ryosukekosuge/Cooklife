class AddUsersToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :user, :integer
  end
end
