class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :owner_id
      t.integer :contributor_id
      t.string :requirements
      t.timestamps
    end
  end
end
