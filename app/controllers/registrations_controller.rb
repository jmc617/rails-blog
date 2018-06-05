
class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :subject_or_grade, :location, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :subject_or_grade, :location, :email, :password, :password_confirmation)
  end
end
