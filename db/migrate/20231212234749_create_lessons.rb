class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.references :lesson_text, null: false, foreign_key: true
      t.references :lesson_video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
