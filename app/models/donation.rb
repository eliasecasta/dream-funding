class Donation < ApplicationRecord
  scope :dreams_sum_amount, ->(id) { where(dream_id: id).sum(:amount) }

  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :dreams # Cambiar a belongs to dreams si algo sale mal

  validates :name, presence: true, length: { minimum: 1, maximum: 255 }
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
