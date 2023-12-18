class ChangeToStudentid < ActiveRecord::Migration[7.0]
  def change
    rename_column :experiences, :user_id, :student_id
    rename_column :skills, :user_id, :student_id
    rename_column :capstones, :user_id, :student_id
  end
end
