class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :type, foreign_key: true
      t.string :name
      t.string :subject
      t.text :content
      t.string :sender_id
      t.string :email
    
      t.timestamps
    end
  end
end
