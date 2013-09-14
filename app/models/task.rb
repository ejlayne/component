class Task < ActiveRecord::Base
  
  def owner_name
    u = User.find_by_id(self.owner_id)
    u.username
  end
  
  def contributor_name
    User.find_by_id(self.contributor_id).username
  end
end
