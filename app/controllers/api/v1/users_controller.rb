class Api::V1::UsersController < Api::V1::BaseController
  before_action :authenticate_user!, only: [:update]
  before_action :find_user, only: [:show, :update]
  #load_and_authorize_resource

  def show
  end
  def update
    @user.update_attributes(user_params)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end

  swagger_controller :users, "User Management"

  swagger_api :show do
    summary "Get users by id"
    param :path, :id, :integer, :optional, "User Id"
    response :ok, "Success", :User
    response :unauthorized
    response :not_acceptable
    response :not_found
  end
  swagger_api :update do
    summary "Updates an existing User"
    param :path, :id, :integer, :required, "User Id"
    param :header, 'Authentication-Token', :string, :required, 'Authentication token'
    param :form, "user[name]", :string, :optional, "Name"
    response :unauthorized
    response :not_found
    response :not_acceptable
  end
end
