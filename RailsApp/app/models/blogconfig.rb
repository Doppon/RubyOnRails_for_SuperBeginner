class Blogconfig < ApplicationRecord
  validates :titile, :stylename, presence: { message: 'は必要項目です！' }
end
