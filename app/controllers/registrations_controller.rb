class RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)
    if resource.save
      sign_up(resource_name, resource) 
    end
    render_jsonapi_response(resource)
  end
end