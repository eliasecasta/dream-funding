class Dream < ApplicationRecord
  belongs_to :user
  has_many :donations, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true, length: {minimum:5, maximum:255}
  validates :money_objective, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}


end
