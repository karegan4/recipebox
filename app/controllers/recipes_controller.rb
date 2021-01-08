class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
        
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        @recipe = Recipe.find(params[:id])
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def destroy
    end

    private

    def recipe_params
        params.require(:recipe).permit(:recipe_name, :serving_size, :directions, :ingredients)
    end
end