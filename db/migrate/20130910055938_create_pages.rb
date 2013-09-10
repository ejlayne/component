class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :user_id
      t.string :page_title
      t.string :contact_info
      t.string :business_desc

    end
  end
end
