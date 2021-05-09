class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :items

         validates :name, presence: true
  validates :nickname, presence: true
  validates :kana, presence: true
  validates :birthd, presence: true
end
