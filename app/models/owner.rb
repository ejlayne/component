class Owner < User
  def owner_tasks
    Task.where("owner_id = ?", self.id)
  end
end
