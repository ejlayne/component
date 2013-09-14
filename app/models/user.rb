class User < ActiveRecord::Base
  has_one :profile
  
  def self.authenticate(email, password)
    u = User.find_by email: email, password: password
  end
  
  def profile
    Profile.find_by_id(self.profile_id)
  end
end
