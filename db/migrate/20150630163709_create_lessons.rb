class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :content
      t.integer :section_id
      t.integer :lesson_id, index: { unique: true }

      t.timestamps
    end
  end
end
