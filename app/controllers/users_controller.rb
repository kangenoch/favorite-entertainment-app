class UsersController < ApplicationController
  def index
    @users = User.all
    render :index #template: "users/index"
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image_url: params[:image_url],

    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
    #render template: "users/show"
  end

  def update
    @user = User.find_by(id: params[:id])
    if user.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      image_url: params[:image_url] || @user.image_url,
    )
      render :show #template: "users/show"
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User deleted successfully" }
  end
end
