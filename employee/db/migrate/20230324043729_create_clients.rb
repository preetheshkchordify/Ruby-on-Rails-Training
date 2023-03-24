class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :location
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
