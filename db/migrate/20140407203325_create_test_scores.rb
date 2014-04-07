class CreateTestScores < ActiveRecord::Migration
  def change
    create_table :test_scores do |t|
      t.integer :score
      t.references :user
      t.references :quiz
    end
  end
end
