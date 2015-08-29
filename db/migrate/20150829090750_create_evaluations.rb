class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      
      t.string   :lecture_id
      t.integer  :lecture_score
      t.text     :content

      t.timestamps null: false
    end
  end
end
