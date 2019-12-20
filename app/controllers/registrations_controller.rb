class RegistrationsController < Devise::RegistrationsController
  protected
  def update_resource(recourse, params)
    recourse.update_without_password(params)
  end
end