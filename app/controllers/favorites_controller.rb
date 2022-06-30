class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end
  
  def create
    Favorite.create(user_id: current_user.id, shop_id: params[:id])
    redirect_to request.referer, notice: 'お気に入りに追加しました。'
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, shop_id: params[:id]).destroy
    redirect_to request.referer, notice: 'お気に入りを解除しました。'
  end
end
