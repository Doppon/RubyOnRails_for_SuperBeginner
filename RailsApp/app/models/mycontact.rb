class Mycontact < ApplicationRecord
  validates :name, presence: { message: 'を必要項目です！' }
  validates :age, numericality: { message: 'を数字で入力してください！' }
  validates :numericality, inclusion: { in: [true, false], message:'は真偽値です！' }
end
