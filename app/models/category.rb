class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'メンズ' },
    { id: 2, name: 'レディース' },
    { id: 3, name: 'キッズ' },
    { id: 4, name: 'ホビー' },
    { id: 5, name: '本CD' },
    { id: 6, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :furimas
  end
