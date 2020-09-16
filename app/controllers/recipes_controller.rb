class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @recipe_comment = RecipeComment.new
  end

  def new
    @recipe = Recipe.new
  end

  def index
     @recipe = Recipe.new
     @recipes = Recipe.all

  end

  def edit
     @recipe = Recipe.find(params[:id])
     unless @recipe.user_id == current_user.id
      redirect_to recipi_path
     end
  end

  def create
      @recipe = Recipe.new(recipe_params)
      @recipe.user = current_user
      if @recipe.save
       redirect_to recipes_path
      end
  end

  def destroy
     @recipe = Recipe.find(params[:id])
     @recipe.destroy
     redirect_to recipe_path
  end

  def update
     @recipe = Recipe.find(params[:id])
     @recipe.update(recipe_params)
     redirect_to recipe_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :body, :image, :material, :procedure)
  end
end