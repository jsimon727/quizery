class RemoveStartTime < ActiveRecord::Migration
  def up
    remove_column :quizzes, :start_time
  end
end
