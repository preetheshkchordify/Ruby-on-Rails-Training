class AddUserToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :user, index: true
  end
end
