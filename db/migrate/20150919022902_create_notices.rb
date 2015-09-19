class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|

      t.string :no_title
      t.string :no_writer
      t.text  :no_content
      t.string :no_password

      t.timestamps null: false
    end
  end
end
