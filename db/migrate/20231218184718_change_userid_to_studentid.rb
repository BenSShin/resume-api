class ChangeUseridToStudentid < ActiveRecord::Migration[7.0]
  def change
    rename_column :educations, :user_id, :student_id
  end
end
