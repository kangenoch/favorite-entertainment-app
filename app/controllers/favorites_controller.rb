class FavoritesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @favorites = Favorite.all
    render :index #template: "favorites/index"
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render :show #template: "favorites/show"
  end

  def create
    @favorite = Favorite.create(
      user_id: params[:user_id],
      item_id: params[:item_id],
    )
    if @favorite.save
      render json: { message: "Favorite created successfully" }, status: :created
    else
      render json: { errors: @favorite.errors.full_messages }, status: :bad_request
    end
    #render template: "favorites/show"
  end

  def update
    @favorite = Favorite.find_by(id: params[:id])
    if @favorite.user_id != current_user.id
      render json: { errors: "You are not authorized to update this favorite" }, status: :unauthorized
    elsif @favorite.update(
      user_id: params[:user_id] || @favorite.user_id,
      item_id: params[:item_id] || @favorite.item_id,

    )
      render :show #template: "favorites/show"
    end
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    if @favorite.user_id != current_user.id
      render json: { errors: "You are not authorized to delete this favorite" }, status: :unauthorized
    else
      @favorite.destroy
      render json: { message: "Favorite deleted successfully" }
    end
  end
end
