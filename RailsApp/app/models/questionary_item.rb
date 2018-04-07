class QuestionaryItem < ApplicationRecord
  belongs_to :qustionary
  has_many :qustionary_choice

  validates :content, presence: {message:'は必須条件です!'}
end
