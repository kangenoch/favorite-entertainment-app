class FavoritesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    favorites = Favorite.all
    render :index #template: "favorites/index"
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render :show #template: "favorites/show"
  end

  def create
    @favorite = Favorite.create(
      user_id: params[:user_id],
      item_id: params[:item_id],
    )
    render template: "favorites/show"
  end

  def update
    favorite = Favorite.find_by(id: params[:id])
    if favorite.update(
      user_id: params[:user_id] || favorite.user_id,
      item_id: params[:item_id] || favorite.item_id,

    )
      render :show #template: "favorites/show"
    end
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
  end
end
