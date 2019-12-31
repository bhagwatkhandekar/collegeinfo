class RenameStudentNameToFirstName < ActiveRecord::Migration[5.2]
  def change
  	    rename_column :students, :student_name, :firstname
  end
end
