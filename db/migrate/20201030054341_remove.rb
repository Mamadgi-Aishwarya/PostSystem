class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions,:comment_id,:integer
  end
end
