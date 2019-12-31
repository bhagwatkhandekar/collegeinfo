class RenameStudentAddressToAddress < ActiveRecord::Migration[5.2]
  def change
  	rename_column :students, :student_address, :address 
  end
end
