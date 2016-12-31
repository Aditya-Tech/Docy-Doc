class User < ActiveRecord::Base
  resourcify
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def active_for_authentication? 
    super && approved? 
  end 
  
  Roles = [ :admin , :employer, :job_seeker ]

  def is?(requested_role)
    self.role == requested_role.to_s
  end

  #def inactive_message 
  #  if !approved? 
  #    :not_approved 
  #  else 
  #    super # Use whatever other message 
  #  end 
  #end

end
