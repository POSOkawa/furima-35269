class Hassou < ActiveHash::Base
    self.data = [
    { id: 1, name: '即' },
     { id: 2, name: '二日ほど' },
      { id: 3, name: '三日ほど' },
      { id: 4, name: '一週間' },
     { id: 0, name: '--' }
  ]
  include ActiveHash::Associations
    has_many :furimas
    end
  