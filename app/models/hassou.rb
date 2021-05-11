class Hassou < ActiveHash::Base
    self.data = [
      { id: 0, name: '--' },
    { id: 1, name: '即' },
     { id: 2, name: '二日ほど' },
      { id: 3, name: '三日ほど' },
      { id: 4, name: '一週間' }
  ]
  include ActiveHash::Associations
    has_many :furimas
    end
  