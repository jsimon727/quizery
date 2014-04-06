class ChangeQuizColumns < ActiveRecord::Migration
  def up
    add_column :quizzes, :start_date, :date
  end

  def down
    remove_column :quizzes, :start_time
  end

end
