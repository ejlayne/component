class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :contact_info
      t.string :experience
      t.string :pref_languages
      t.string :pref_task_types

      t.timestamps
    end
  end
end
