class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
         validates :nickname, presence: true
         validates :name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
         validates :namef, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }
         validates :kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナを使用してください" }
         validates :kanaf, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナを使用してください" }
         validates :birthd, presence: true
         validates :password, presence: true, length: { minimum: 6 }, format: { with: /\A[a-z0-9]+\z/i, message: "英数字文字6以上"}

         validates :password,format:{with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/}
end
