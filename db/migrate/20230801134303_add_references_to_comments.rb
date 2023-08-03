class AddReferencesToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :employee, foreign_key: true
    add_reference :comments, :position, foreign_key: true
    add_reference :comments, :project, foreign_key: true
  end
end
