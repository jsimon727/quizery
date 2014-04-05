class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :quiz
      t.references :user

      t.timestamps
    end
  end
end
