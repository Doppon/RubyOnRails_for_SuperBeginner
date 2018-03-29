class Blogpost < ApplicationRecord
  belongs_to :bloggenre

  validates :title, :content, presence: { message:'は必要項目です！' }
end
