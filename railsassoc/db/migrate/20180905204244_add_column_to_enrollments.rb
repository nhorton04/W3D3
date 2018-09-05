class AddColumnToEnrollments < ActiveRecord::Migration[5.1]
  def change
    add_column :enrollments , :instructor_id , :string
  end
end
