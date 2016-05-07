class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    resource = User.find_for_database_authentication(
               email: params[:user][:email])
    return invalid_login_attempt unless resource

    if resource.valid_password?(params[:user][:password])
      sign_in :user, resource
      message = "Welcome #{resource.email}, Nice of you to join us today"
      flash[:notice] = message
      redirect_to root_path

    else
        invalid_login_attempt
    end


  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

    def invalid_login_attempt
      message = "Invalid email/password combination"
      flash[:alert] = message
      redirect_to root_path
    end
end
