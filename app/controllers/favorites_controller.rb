class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    #current_user.favorites.find_or_create_by(micropost_id: micropost.id)
    current_user.favorite(micropost)
    flash[:success] = 'micropostをいいねしました。'
    # Favorite.create(micropost_id: params[:micropost_id], user_id: current_user.id)
    redirect_to root_url
  end

  def destroy
    # @favorite = Favorite.find(params[:id])
    # @favorite.user_id == current_user.id
    # Favorite.find(params[:id]).destory
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'micropostのいいねを解除しました。'
    redirect_to root_url
  end
  
  
end
