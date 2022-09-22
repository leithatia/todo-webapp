class SetDefaultsToFalseForImportantAndCompleted < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :completed, false
    change_column_default :tasks, :important, false
  end
end
