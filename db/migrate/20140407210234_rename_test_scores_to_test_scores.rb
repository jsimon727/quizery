class RenameTestScoresToTestScores < ActiveRecord::Migration
  def change
    drop_table :test_scores
  end
end
