class Basyo < ActiveHash::Base
  self.data = [
    { id: 1, name: '北海道沖縄' },
    { id: 2, name: '東北' },
    { id: 3, name: '関東' },
    { id: 4, name: '中部' },
    { id: 5, name: '関西' },
    { id: 0, name: '--' }
  ]
  include ActiveHash::Associations
  has_many :furimas
  end
