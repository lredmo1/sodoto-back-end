class Lesson < ApplicationRecord
  belongs_to :lesson_text
  belongs_to :lesson_video
end
