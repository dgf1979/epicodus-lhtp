class UpdateSection < ActiveRecord::Migration
  def change
    add_column :sections, :chapter_id, :integer
  end
end
