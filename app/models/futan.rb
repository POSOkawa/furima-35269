class Futan < ActiveHash::Base
    self.data = [
      { id: 0, name: '--' },
      { id: 1, name: '送料込み' },
      { id: 2, name: '着払い' }
    ]
    include ActiveHash::Associations
    has_many :furimas
    end
  