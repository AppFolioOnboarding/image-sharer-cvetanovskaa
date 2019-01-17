class ImagesController < ApplicationController
  def index
    @images = Image.all.order(created_at: :desc)
  end

  def new
    @image = Image.new
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash.now.notice = 'Image was successfully created.'
      redirect_to @image
    else
      render new_image_path
    end
  end

  private

  def image_params
    params.require(:image).permit(:url)
  end
end
