class CreateEmployes < ActiveRecord::Migration[7.0]
  def change
    create_table :employes do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :location
      t.text :dept

      t.timestamps
    end
  end
end
