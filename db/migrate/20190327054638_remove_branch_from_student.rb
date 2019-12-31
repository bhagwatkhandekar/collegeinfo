class RemoveBranchFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :branch, :string
    remove_column :students, :university, :string
  end
end
