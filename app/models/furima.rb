class Furima < ApplicationRecord
 extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :basyo
   belongs_to :category
    belongs_to :futan
    belongs_to :hassou
    belongs_to :jyoutai
  
    has_one :order
  belongs_to :user
   has_one_attached :image
 
   validate :name
   validate :image
    validate :setumei
    validate :price
    
    validate :basyo_id
    validate :category_id
   validate :futan_id
    validate :hassou_id
    validate :jyoutai_id

    with_options format: { with: /\A[0-9]+\z/ } do
      validates :price, numericality: { greater_than: 299, less_than: 99999999 } 
    end
    with_options numericality: { other_than: 0 } do
      validates :basyo_id, :category_id, :futan_id, :hassou_id, :jyoutai_id
    end
    with_options presence: true do
      validates :name, :setumei, :image, :price
    end
  end
  