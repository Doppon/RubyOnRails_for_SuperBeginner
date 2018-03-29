class Bloggenre < ApplicationRecord
  has_many :blogpost

  validates :name, presence: { message: 'は必要項目です！' }
end
