class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :lesson
      t.text :text
      t.timestamps
    end
  end
end
