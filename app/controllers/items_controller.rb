class ItemsController < ApplicationController
  def create
    @user = current_user
    @item = @user.items.new(item_params)

    if @item.save
      redirect_to [@user]
    end
  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      redirect_to [@user]
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
