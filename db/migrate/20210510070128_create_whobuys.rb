class CreateWhobuys < ActiveRecord::Migration[6.0]
  def change
    create_table :whobuys do |t|
      t.references :user, null: false, foreign_key: true
      t.references :furima, null: false, foreign_key: true
      t.timestamps
    end
  end
end
