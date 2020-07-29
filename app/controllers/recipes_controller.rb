class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all 
        render json: @recipes
    end

    def create
        @recipe = Recipe.create(recipe_params)
        # byebug
        render json: @recipe
    end

    def update 
        @recipe = Recipe.find(params[:id])
        @recipe.update(recipe_params)
        render json: @recipe
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy 
        render json: @recipe
    end

    private

    # def recipe_params
    #     params.permit(:name, :image_url, :instruction, :serving_size, :time)
    # end

    def recipe_params
        params.permit(:cuisine_id, :name, :image_url, :instruction, :serving_size, :rating, :user_id, :time)
    end
end