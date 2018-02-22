class GridImagesController < ApplicationController

  def new
    @grid_image = GridImage.new
  end 

  def create
    @grid_image = GridImage.new(image_params)

    if @grid_image.save
      flash[:success] = "Image Saved!"
      redirect_to edit_portfolio_grid_path
    else
      flash[:danger] = "There was a problem saving the image " + @grid_image.errors.full_messages.to_sentence
      redirect_to edit_portfolio_grid_path
    end
  end

  def destroy
    @grid_image = GridImage.find(params[:id])
    @grid_image.destroy
    flash[:info] = "Image Deleted!"
    redirect_to edit_portfolio_grid_path
  end

  private

    def image_params
      params.require(:grid_image).permit(:name, :image, :description, :grid_image_category_id)
    end

end