class QuestionaryItem < ApplicationRecord
  belongs_to :questionary
  has_many :qustionary_choice

  validates :content, presence: {message:'は必須条件です!'}
end
