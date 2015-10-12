class Api::V1::MicropostsController < Api::V1::BaseController
  before_action :find_user
  def index
    user = User.find(params[:user_id])
    @microposts = paginate(user.microposts)
  end
  def find_user
  end
end
