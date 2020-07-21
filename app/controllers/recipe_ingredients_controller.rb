class RecipeIngredientsController < ApplicationController
    def index
        @recipe_ingredients = RecipeIngredient.all 
        render json: @recipe_ingredients
    end

    def create
        @recipe_ingredient = RecipeIngredient.create(ingredient_params)
        render json: @recipe_ingredient
    end

    def update 
        @recipe_ingredient = RecipeIngredient.find(params[:id])
        @recipe_ingredient.udpate(recipe_params)
        render json: @recipe_ingredient
    end

    def destroy
        @recipe_ingredient = RecipeIngredient.find(params[:id])
        @recipe_ingredient.destroy 
        render json: @recipe_ingredient
    end

    private

    def ingredient_params
        params.permit(:recipe_id, :ingredient_id, :quantity, :measurement_type)
    end
end

