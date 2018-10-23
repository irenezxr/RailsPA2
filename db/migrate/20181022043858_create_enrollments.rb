class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.string :course_code
	  t.belongs_to :course, index: true, foreign_key: :course_code
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end
