class Users::RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        message = "You successfully registered! Welcome #{resource.email}"
        flash[:notice] = message
        sign_up(resource_name, resource)
        respond_with resource, location: root_path
      else
        message = "signed_up_but_#{resource.inactive_message}"
        flash[:notice] =  message
        expire_data_after_sign_in!
        respond_with resource, location: root_path
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      message = "Invalid email/password. Please try again"
      flash[:alert] = message
      redirect_to root_path
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected
    def invalid_sign_up_attempt
      message = "Invalid email or password, please try again"
      flash[:alert] = message
      redirect_to root_path
    end
end
