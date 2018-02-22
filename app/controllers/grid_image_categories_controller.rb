class GridImageCategoriesController < ApplicationController
  
    def new
      @template_one = TemplateOne.find(1)
      @grid_image_category = @template_one.grid_image_categories.new
    end 
  
    def create
      @template_one = TemplateOne.find(1)
      @grid_image_category = @template_one.grid_image_categories.new(grid_image_category_params)
  
      if @grid_image_category.save
        flash[:success] = "Category Added!"
        redirect_to edit_portfolio_grid_path
      else
        flash[:danger] = "Sorry, there was a problem! " + @grid_image_category.errors.full_messages.to_sentence 
        redirect_to edit_portfolio_grid_path 
      end
    end

    def destroy
      @template_one = TemplateOne.find(1)
      @grid_image_category = GridImageCategory.find(params[:id]) 
      @grid_image_category.destroy
      flash[:info] = "The category and all related images have been destroyed."
      redirect_to edit_portfolio_grid_path 
    end
  
    private
  
      def grid_image_category_params
        params.require(:grid_image_category).permit(:name) 
      end
  end