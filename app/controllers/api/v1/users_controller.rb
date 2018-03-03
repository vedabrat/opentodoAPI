module Api::V1
  class UsersController < ApiController

  # GET /v1/users
  def index
    users = User.all
    render json: User.all
  end

  end
end
