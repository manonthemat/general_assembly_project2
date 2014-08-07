class ShoesController < ApplicationController
 
  def index
  	@shoes = Shoe.search(params[:search])
    
  end
  
  # def show
  # 	@shoe = Shoe.find(params[:id])
  # end

  # def new
  #   @shoe = Shoe.new
  # end

  #   # you do not need the at because its not rendered
  # def create
  #   @shoe = Shoe.new(params.require(:shoe).permit(:title, :model, :colorway, :style_code, :release_year, :description))
  #   if @shoe.save
  #     redirect_to shoes_path
  #   else 
  #     render 'new'
  #   end
  # end

  # def edit
  #   @shoe = Shoe.find(params[:id])
  # end

  # def update
  #   @shoe = shoe.find(params[:id])
  #   if @shoe.update_attributes(params.require(:shoe).permit(:title, :model, :colorway, :style_code, :release_year, :description))
  #     redirect_to shoes_path
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @shoe = Shoe.find(params[:id])
  #   @shoe.destroy
  #   redirect_to users_path
  # end
end