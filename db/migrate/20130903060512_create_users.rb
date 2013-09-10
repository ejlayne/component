class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :type
      t.integer :profile_id
      t.integer :page_id

      t.timestamps
    end
  end
end
