class CreateCourseSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :course_subjects do |t|
      t.string :course_code
      t.string :subject_id
      t.belongs_to :course, index: true, foreign_key: :course_code
      t.belongs_to :subject, index: true

      t.timestamps
    end
  end
end
