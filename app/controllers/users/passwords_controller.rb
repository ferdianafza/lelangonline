# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  layout "devise"
  before_action :configure_sign_up_params, if: :devise_controller?
  before_action :configure_account_update_params, only: [:update]
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
  def create
    super
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  def update
    super
  end

  protected

  def update_resource(resource, params)
    if params[:current_password].blank?
     resource.update_without_password(params.except(:current_password))
    else
      resource.update_with_password(params)
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nama_depan, :nama_belakang, :alamat])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :nama_depan, :nama_belakang])
  end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
