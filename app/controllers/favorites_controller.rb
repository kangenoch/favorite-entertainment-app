class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render template: "favorites/index"
  end

  def show
    @favorite = Favorite.find_by(params[:id])
    render template: "favorites/show"
  end

  def create
    @favorite = Favorite.create(
      user_id: params[:user_id],
      item_id: params[:item_id],
    )
    render template: "favorites/show"
  end

  def update
    @favorite = Favorite.find_by(params[:id])
    if @favorite.update(
      user_id: params[:user_id] || @favorite.user_id,
      item_id: params[:item_id] || @favorite.item_id,

    )
      render template: "favorites/show"
    end
  end

  def destroy
    @favorite = Favorite.find_by(params[:id])
    @favorite.destroy
  end
end
