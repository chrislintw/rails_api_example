class Api::V1::SessionsController < Api::V1::BaseController
  def create
    @user = User.find_by(email: create_params[:email])
    if @user && @user.authenticate(create_params[:password])
      self.current_user = @user
    else
      return api_error(status: 401)
    end

  end
  swagger_controller :sessions, "Session"
  swagger_api :create do
    summary "Login"
    param :form, "user[email]", :string, :optional, "Email"
    param :form, "user[password]", :string, :optional, "Password"
    response :not_found
    response :not_acceptabled
  end

  private

  def create_params
    params.require(:user).permit(:email, :password)
  end
end
