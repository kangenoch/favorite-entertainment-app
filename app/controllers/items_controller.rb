class ItemsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    items = Item.all
    render :index #template: "items/index"
  end

  def show
    item = Item.find_by(id: params[:id])
    render :show #template: "items/show"
  end

  def create
    item = Item.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
    )
    if item.save
      render json: { message: "Item created successfully" }, status: :created
    else
      render json: { errors: item.errors.full_messages }, status: :bad_request
    end
    #render :show #template: "items/show"
  end

  def update
    item = Item.find_by(id: params[:id])
    if item.update(
      name: params[:name] || item.name,
      image_url: params[:image_url] || item.image_url,
      description: params[:description] || item.description,
      category: params[:category] || item.category,
    )
      render :show #template: "items/show"
    end
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
  end
end
