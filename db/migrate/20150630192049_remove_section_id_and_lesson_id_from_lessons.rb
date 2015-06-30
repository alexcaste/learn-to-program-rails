class RemoveSectionIdAndLessonIdFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :section_id, :integer
    remove_column :lessons, :lesson_id, :integer
  end
end
