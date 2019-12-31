class RemoveCollegeRankFromCollege < ActiveRecord::Migration[5.2]
  def change
    remove_column :colleges, :college_rank, :string
  end
end
