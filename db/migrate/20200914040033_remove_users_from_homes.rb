class RemoveUsersFromHomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :homes, :user, :integer
  end
end
