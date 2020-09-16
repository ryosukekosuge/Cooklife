class AddProcedureToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :procedure, :text
  end
end
