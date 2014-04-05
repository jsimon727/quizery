class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :correct
      t.string :letter
      t.string :name
      t.references :question
      t.references :user

      t.timestamps
    end
  end
end
