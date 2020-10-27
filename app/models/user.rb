class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :donations, dependent: :destroy
  has_many :dreams, dependent: :destroy

  validates :name, presence: true, length: {minimum:5, maximum:20}

  has_one_attached :avatar

end


