class CreateWheredelis < ActiveRecord::Migration[6.0]
  def change
    create_table :wheredelis do |t|
      t.string :yubin, null: false
      t.string :phone, null: false
      t.string :sityoson, null: false
      t.string :banti, null: false
      t.string :tatemono
      t.references :order, null: false, foreign_key: true
      t.integer    :basyo_id     , null: false
      t.timestamps
    end
  end
end
