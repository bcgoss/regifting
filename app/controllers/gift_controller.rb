class GiftController < ApplicationController
  def new

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
end
