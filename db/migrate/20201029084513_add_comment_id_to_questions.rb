class AddCommentIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :comment_id, :int
  end
end
