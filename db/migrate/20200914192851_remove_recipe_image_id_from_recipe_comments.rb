class RemoveRecipeImageIdFromRecipeComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipe_comments, :recipe_image_id, :integer
  end
end
