class UsersController < ApplicationController
    
def index
    if params[:approved] == "false"
        @users = User.where(approved: false)
    else
        @users = User.all
    end
    
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
    @users = User.all
    
end

end
