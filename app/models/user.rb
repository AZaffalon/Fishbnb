class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, :first_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
  has_many :fishes, dependent: :destroy
end
