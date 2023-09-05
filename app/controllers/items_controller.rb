class ItemsController < ApplicationController
  def index
    @items = Item.all
    render template: "items/index"
  end

  def show
    @item = Item.find_by(params[:id])
    render template: "items/show"
  end

  def create
    @item = Item.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
    )
    render template: "items/show"
  end

  def update
    @item = Item.find_by(params[:id])
    if @item.update(
      name: params[:name] || @item.name,
      image_url: params[:image_url] || @item.image_url,
      description: params[:description] || @item.description,
      category: params[:category] || @item.category,
    )
      render template: "items/show"
    end
  end

  def destroy
    @item = Item.find_by(params[:id])
    @item.destroy
  end
end
