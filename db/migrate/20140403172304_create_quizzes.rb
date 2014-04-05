class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :category
      t.integer :time_limit
      t.datetime :start_time
      t.integer :point_value

      t.timestamps
    end
  end
end
