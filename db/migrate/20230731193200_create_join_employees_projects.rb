class CreateJoinEmployeesProjects < ActiveRecord::Migration[7.0]
  def change
    create_join_table :projects, :employees
  end
end
