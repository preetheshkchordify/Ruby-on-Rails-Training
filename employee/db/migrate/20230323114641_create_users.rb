class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :experience
      t.string :location
      t.text :department
      t.belongs_to :designation
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
