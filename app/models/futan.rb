class Futan < ActiveHash::Base
    self.data = [
      { id: 1, name: '送料込み' },
      { id: 2, name: '着払い' },
      { id: 0, name: '--' }
    ]
    include ActiveHash::Associations
    has_many :furimas
    end
  