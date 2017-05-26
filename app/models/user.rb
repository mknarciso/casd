class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def self.is_assistant
    if self.role.eql? "assistant"
      return true
    end
    return false
  end
  
  def self.is_admin
    if self.role.eql? "admin"
      return true
    end
    return false
  end
  
  def self.is_director
    if self.role.eql? "director"
      return true
    end
    return false
  end
  
  def self.get_role
    return self.role
  end
  
end
