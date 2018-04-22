class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    validates :name, presence: true, length: { minimum: 2, maximum: 20 }
    # validates :introduction, presence: true, length: { minimum: 2, maximum: 50 }
    validates :introduction, length: { in: 1..50 }
    has_many :bookers

    attachment :image
end
