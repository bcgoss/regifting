class GiftsController < ApplicationController
  def index
    @gifts = Gift.all
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)
    @gift.user_id = current_user.id if current_user
    if @gift.save
      flash[:success] = "Gift was created."
    else
      flash[:warning] = @gift.errors.full_messages.join(", ")
    end
    redirect_to gifts_path
  end

  def show
    @gift = Gift.find(params[:id])
  end

  private
    def gift_params
      params.require(:gift).permit(:name, :description, :image_url)
    end
end
