class Donation < ApplicationRecord
  # belongs_to :author, class_name: :User
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  belongs_to :dream

  validates :name, presence: true, length: {minimum:5, maximum:30}
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}

end
