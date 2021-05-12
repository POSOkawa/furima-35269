class Order < ApplicationRecord
belongs_to :user, optional: true
belongs_to :furima
has_one :wheredeli
end