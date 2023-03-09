class AddStreamToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :stream, :text 
    add_column :students, :image, :string
    add_column :students, :confirm, :string

  end
end
  