class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation, :email)
    end

    def acount_update_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
      end
  end