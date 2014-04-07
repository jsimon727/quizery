class AddNewColumnToScores < ActiveRecord::Migration

    def up
      add_column :scores, :quiz_name, :string
    end

end
