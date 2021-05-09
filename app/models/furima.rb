class Furima < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :basyo
  belongs_to :category
  belongs_to :futan
  belongs_to :hassou
  belongs_to :jyoutai

  belongs_to :user
  has_one_attached :image

  

  validates :name, presence: true
  validates :setumei, presence: true
  validates :price, presence: true
  validates :basyo_id, numericality: { other_than: 0 } 
  validates :category_id, numericality: { other_than: 0 } 
  validates :futan_id, numericality: { other_than: 0 } 
  validates :hassou_id, numericality: { other_than: 0 } 
  validates :jyoutai_id, numericality: { other_than: 0 } 
end
