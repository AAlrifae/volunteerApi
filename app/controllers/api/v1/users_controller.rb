class Api::V1::UsersController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token

  def index
    user = User.all
    render json: user
  end

  def show
    respond_with User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    # if the user is saved successfully than rspond with json data and status code 201
    if user.save
      render json: user, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :age, :userName, :phoneNumber, :location, :gender, :isOrganization)
  end
end
