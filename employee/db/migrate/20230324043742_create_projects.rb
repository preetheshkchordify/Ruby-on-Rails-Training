class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_type
      t.belongs_to :client
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
