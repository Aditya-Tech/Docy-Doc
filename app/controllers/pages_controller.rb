class PagesController < ActionController::Base
  
  def admin
     if current_user && current_user.role == '0'
         @seeks = User.where(role:2)
         @emps = User.where(role:1)
     else
         redirect_to root_path
     end
      
  end
end