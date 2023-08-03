class RemoveCommentsReferences < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :employee
    remove_reference :comments, :position
    remove_reference :comments, :project
  end
end
