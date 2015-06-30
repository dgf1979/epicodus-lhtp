class ChangeTableNames < ActiveRecord::Migration
  def change
    rename_table :initial_tables, :lessons
  end
end
