class Api::V1::MicropostsController < Api::V1::BaseController
  def index
    user = User.find(params[:user_id])
    @microposts = paginate(user.microposts)
  end
  swagger_controller :microposts, "Micropost"

  swagger_api :index do
    summary "Fatched all posts by user"
    param :path, :user_id, :integer, :optional, "User Id"
    response :ok, "Success", :User
    response :unauthorized
    response :not_found
  end
end
