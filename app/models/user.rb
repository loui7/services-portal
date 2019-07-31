class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :surname, presence: true
  validates :contact_number, presence: true
  validates :address, presence: true
  validates :email, presence: true

  has_many :services
  has_many :proposals

  def fullname
    return "#{name} #{surname}"
  end
end

