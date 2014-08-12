
class ImagesController < ApplicationController
  
 def index
  	@images = Image.all
  end

  def show
  	@image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

    # you do not need the at because its not rendered
  def create
    @image = Image.new(pic_params)
    if @image.save
      redirect_to images_path
    else 
      render 'new'
    end
  end

private
  def pic_params
    params.require(:image).permit(:pic)
  end
  # def edit
  #   @image = Image.find(params[:image])
  # end

  # def update
  #   @image = image.find(params[:id])
  #   if @image.update_attributes(params.require(:image).permit(:image, :content_type))
  #     redirect_to images_path
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @image = Image.find(params[:id])
  #   @image.destroy
  #   redirect_to images_path
  # end
end
