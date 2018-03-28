class Person < ApplicationRecord
  validates :name, presence: { message: 'は必要項目だぞ(ﾉ)･∀･(ヾ)ﾓﾁﾓﾁ' }
  validates :age, numericality: { message: 'は数字で入力するんだぞ(ﾉ)･∀･(ヾ)ﾓﾁﾓﾁ' }
  validates :mail, email: { message: 'は本当にメアドか？(ﾉ)･∀･(ヾ)ﾓﾁﾓﾁ' }
end
