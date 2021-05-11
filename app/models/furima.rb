class Furima < ApplicationRecord
 extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :basyo
   belongs_to :category
    belongs_to :futan
    belongs_to :hassou
    belongs_to :jyoutai
  
  belongs_to :user
   has_one_attached :image
 
   validates :name
   validates :image
    validates :setumei
    validates :price
    
    validates :basyo_id
    validates :category_id
   validates :futan_id
    validates :hassou_id
    validates :jyoutai_id

    with_options format: { with: /\A[0-9]+\z/ } do
      validates :price, numericality: { greater_than: 299, less_than: 100000000 } 
    end
    with_options numericality: { other_than: 0 } do
      validates :basyo_id, :category_id, :futan_id, :hassou_id, :jyoutai_id
    end
    with_options presence: true do
      validates :name, :setumei, :image, :price
    end
  end
  