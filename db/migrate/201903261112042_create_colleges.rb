class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :department
      t.integer :college_rank

      t.timestamps
    end
  end
end
