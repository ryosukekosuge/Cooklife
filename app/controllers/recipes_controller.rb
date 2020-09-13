class RecipesController < ApplicationController
  def show
  end

  def new
    @recipi = Recipi.mew
  end

  def index
  end

  def edit
    @recipe = Recipi.find(params[:id])
    unless @recipe.user_id == current_user.id
      redirect_to recipi_path
    end
  end

  def create
  end

  def destroy
  end

  def update
  end
end
