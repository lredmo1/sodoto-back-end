class CreateLessonTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_texts do |t|
      t.string :title
      t.string :description
	  t.string :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
