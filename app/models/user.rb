class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, :first_name, :city, presence: true
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }

  def full_name
    "#{first_name} #{last_name}"
  end

end
