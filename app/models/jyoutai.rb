class Jyoutai < ActiveHash::Base
  self.data = [
    { id: 1, name: '新品' },
    { id: 2, name: '未使用に近い' },
    { id: 3, name: '状態良' },
    { id: 4, name: 'やや状態良' },
    { id: 5, name: 'ジャンク' },
    { id: 0, name: '--' }
  ]
  include ActiveHash::Associations
  has_many :furimas
  end