class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
         validates :nickname
         validates :name, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/, message: '全角文字を使用してください' }
         validates :namef, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/, message: '全角文字を使用してください' }
         validates :kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナを使用してください" }
         validates :kanaf, format: { with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナを使用してください" }
         validates :birthd
         validates :password, length: { minimum: 6, message: "英数字文字6以上" }
         validates :password,format:{with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+\z/i}
         end
end
