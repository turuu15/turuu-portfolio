class AddBadgeToskills < ActiveRecord::Migration[5.2]
  def change
  	add_column :blogs, :badge, :text
  end
end
