class AddLastnameToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :lastname, :string
  end
end
