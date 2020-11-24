class PixelsController < ApplicationController
  #before_action :authenticate_provider!
  before_action :set_pixel, only: [:show, :update, :destroy]

  # GET /pixels
  def index
    @pixels = Pixel.all

    render json: @pixels
  end

  # GET /pixels/1
  def show
    render json: @pixel
  end

  # POST /pixels
  def create
    @pixel = Pixel.new(pixel_params)

    if @pixel.save
      render json: @pixel, status: :created, location: @pixel
    else
      render json: @pixel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pixels/1
  def update
    @pixel.assign_attributes(pixel_params)
    @pixel.converted_at = DateTime.now

    if @pixel.save
      render json: @pixel
    else
      render json: @pixel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pixels/1
  def destroy
    @pixel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pixel
      @pixel = Pixel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pixel_params
      params.require(:pixel).permit(:provider_id, :converted, :converted_at)
    end
end
