class CreateFurimas < ActiveRecord::Migration[6.0]
   def change
     create_table :furimas do |t|
       t.string :name, null: false
       t.text :setumei, null: false
       t.integer :price, null: false
       t.references :user, null: false, foreign_key: true
       t.integer    :basyo_id     , null: false
       t.integer    :category_id     , null: false
       t.integer    :futan_id     , null: false
       t.integer    :hassou_id     , null: false
       t.integer    :jyoutai_id     , null: false
 
       t.timestamps
     end
   end
 end
  