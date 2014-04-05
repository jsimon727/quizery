class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :query
      t.integer :number
      t.references :quiz
      t.integer :time_limit

      t.timestamps
    end
  end
end
