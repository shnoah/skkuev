class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|

      t.string :title
      t.integer :money
      t.string :bunho
      t.text :sulmung

      t.timestamps null: false
    end
  end
end
