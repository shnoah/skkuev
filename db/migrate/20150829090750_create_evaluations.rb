class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      
      t.string   :lecture_id
      t.integer  :lecture_score
      t.integer  :lecture_grade
      t.integer  :lecture_amount
      t.integer  :lecture_achievement
      t.text     :content
      t.text     :content_2
      

      t.timestamps null: false
    end
  end
end
